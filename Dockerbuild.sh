for i in `ls`
do
    if [  /($i != "Dockerbuild.sh") $$ ($1 != "*.md") ]
      then
       echo "file: $i"
       chmod +x ./*
       docker build -f $i
    fi
done 
