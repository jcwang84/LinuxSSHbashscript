file="list.txt"
read -p "please enter id and key (-u ****): " username
read -p "please enter new jenkins pack name: " jenkinspack

cat $file | while read line
do
  echo "Working on $line"
  ssh root@$line " cd /usr/lib/jenkins/ && \
                   mv jenkins.war jenkins.war.old &>> output && \
                   curl -u$username -o jenkins.war 'Http://$jenkinspack' &>> output && \
                   service jenkins restart &>> output && \
                   exit"
  echo "Completed work on $line"

done
