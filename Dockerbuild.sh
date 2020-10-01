for i in `ls -I "*.txt" -I "*.md" -I "*.sh"`
do
  echo "file: $i"
  chmod +x ./*
  docker build . -f $i --tag "$i":$(date +%s)
done 