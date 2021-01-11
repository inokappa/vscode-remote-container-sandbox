Describe 'lib/sample.sh'
  Include lib/sample.sh

  setup() {
    ${HOME}/bin/mc config host add minio ${AWS_ENDPOINT} ${AWS_ACCESS_KEY_ID} ${AWS_SECRET_ACCESS_KEY} > /dev/null
    ${HOME}/bin/mc mb minio/example-bucket > /dev/null
    touch object1 object2
    for ob in object1 object2
    do
      ${HOME}/bin/mc cp $ob minio/example-bucket/$ob > /dev/null
    done
  }

  cleanup() { 
    ${HOME}/bin/mc rb --force minio/example-bucket > /dev/null
    rm -f object
  }

  BeforeCall 'setup'
  AfterCall 'cleanup'

  It 'says hello'
    When call sample1 ShellSpec
    The output should equal 'Hello ShellSpec!'
  End

  It 'check output'
    When call sample2
    The output should match pattern '*object*'
  End
End