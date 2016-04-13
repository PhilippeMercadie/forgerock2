#!/bin/sh
# Start OpenAM
# To create a persistent configuration mount a data volume on /openam/root

#  Point instance dir at /root/openam
mkdir -p /1001/.openamcfg
cat >/1001/.openamcfg/AMConfig_usr_local_tomcat_webapps_openam_ <<HERE
/opt/openam/conf
HERE

cd /usr/local/tomcat 
bin/catalina.sh run 

