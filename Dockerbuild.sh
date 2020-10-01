for i in `ls`
do
    if [  $i != "Dockerbuild.sh" ]
      then
       echo "file: $i"
       docker build --tag my-image-name:$(date +%s) -f $i 
    fi
done 