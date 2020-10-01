for i in `ls`
do
    if [  $i != "Dockerbuild.sh" ]
      then
       echo "file: $i"
       chmod +x ./*
       docker build -f ./$i 
    fi
done 
