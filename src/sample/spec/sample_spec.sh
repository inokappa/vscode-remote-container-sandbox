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
    rm -f object1 object2
  }

  BeforeCall 'setup'
  AfterCall 'cleanup'

  It 'hello ShellSpec (equal)'
    When call sample1 ShellSpec
    The output should equal 'Hello ShellSpec!'
  End

  It 'hello $arg (equal)'
    When call sample1 foo
    The output should equal 'Hello foo!'
  End

  It 'hello ShellSpec (end with)'
    When call sample1 ShellSpec
    The output should end with '!'
  End

  It 'hello ShellSpec (start with)'
    When call sample1 ShellSpec
    The output should start with 'Hello'
  End

  It 'hello ShellSpec (pattern match)'
    When call sample1 ShellSpec
    The output should match pattern 'Hello*'
  End

  It 'check output (minio check)'
    When call sample2
    The output should match pattern '*object*'
  End
End