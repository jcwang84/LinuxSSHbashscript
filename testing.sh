file="list.txt"
name="i am on"
n=0
cat $file | while read line
do
  ssh $line "echo $name $line &>> file && \
             ip a &>> file && \
             scp root@$line:file file$n &&\
             exit" 

    n=$((n+1))
    
done