for i in `ls`
do
    if [  $i != "Dockerbuild.sh" ]
      then
       echo "file: $i"
       bash -c docker build --file $i --tag my-image-name:$(date +%s)
    fi
done 