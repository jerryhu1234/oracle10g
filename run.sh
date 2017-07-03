docker rm -f oracle10g  
docker run --name oracle10g -h oradb -p 5211:1521 -v /home/root/10ginstall/:/install/database/ -v /home/root/agent10g:/agent/ jerryhu/oracle10g
