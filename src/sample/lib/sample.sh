sample1() {
  echo "Hello ${1}!"
}

sample2() {
  if [ -n "${AWS_ENDPOINT}" ];then
    res=$(aws --endpoint-url "${AWS_ENDPOINT}" s3api list-objects-v2 --bucket "${PARAM_BUCKET}")
    stat=$?
  else
    res=$(aws s3api list-objects-v2 --bucket "${PARAM_BUCKET}")
    stat=$?
  fi

  if [ -n "$res" -a "$stat" = "0" ];then
    echo $res | jq -r '[.Contents[].Key]|@tsv'
  else
    echo ""
  fi
}