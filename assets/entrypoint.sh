#!/usr/bin/env bash  
  
set -e  
source /assets/colorecho  

#chown -R oracle:dba /install
  
if [ ! -d "/ghca/oracle/product/10.1.0/db_1" ]; then  
    echo_yellow "Database is not installed. Installing..."  
    /assets/install.sh  
fi  
  
su oracle -c "/assets/entrypoint_oracle.sh"  
