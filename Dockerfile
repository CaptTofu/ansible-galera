# docker-dna/galera/Dockerfile
#
# VERSION    0.1.0
#
FROM capttofu/ubuntu_base
MAINTAINER Patrick aka CaptTofu Galbraith , patg@patg.net

# Update distribution
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get clean

# Add files
ADD . ./DockerDNA

# Install Galera/PXC 
RUN ( echo '[ansible-galera]' && \
      echo 'localhost' \
    ) > /etc/ansible/hosts \
      && ansible-playbook ./site.yml --connection=local \
      && apt-get clean      

# Expose MySQL/Galera 
EXPOSE 3306 4444 4567 4568 9200
#ENTRYPOINT [""]
# ENTRYPOINT ["/usr/bin/mysqld_safe"]
ENTRYPOINT ["/usr/local/bin/mysql_run.sh"]
# CMD ["/usr/bin/mysqld_safe", "--wsrep_cluster_address=$CLUSTER_ADDRESS"]
