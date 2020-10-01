for i in `ls -I "*.txt" -I "*.md" -I "*.sh"`
do
  echo "file: $i"
  chmod +x ./*
  docker build . -f $i --tag my-app:$(date +%s)
done 