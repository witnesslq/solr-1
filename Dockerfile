# This dockerfile uses the ubuntu image
# VERSION 1
# Author: FansinZhao
# Command format : Instruction [arguments / command ]..

# 1 use offical solr
FROM solr

# 2 auth
MAINTAINER FansinZhao 171388204@qq.com

# 3 command
# need chmod a+x run.sh before build.
ADD run.sh /run.sh
ADD ojdbc6-11.2.0.3.jar /opt/solr/server/lib/ojdbc6-11.2.0.3.jar
ADD mysql-connector-java-6.0.5.jar /opt/solr/server/lib/mysql-connector-java-6.0.5.jar
# simplechinese replace
#ADD managed-schema /opt/solr/example/example-DIH/solr/db/conf/managed-schema

# 4 run
CMD ["solr-foreground"]
ENTRYPOINT /run.sh
