Role Name
========

https://www.percona.com/doc/percona-xtradb-cluster/5.6/howtos/ubuntu_howto.html
https://www.percona.com/doc/percona-xtradb-cluster/5.6/manual/bootstrap.html

ansible-galera -- build a galera cluser node

Requirements
------------

None

Role Variables
--------------

percona -- see main.yml in ./defaults

Dependencies
------------

None

License
-------

Apache 2.0

Author Information
------------------

Patrick "CaptTofu" Galbraith <patg@patg.net>

How do I use this?
------------------

Very simple. 

1. ansible-galaxy install --force --roles-path=/where/ever/you/want/your/roles CaptTofu.galera 

2. Add three galera hosts to your ansible hosts file

    [galera_cluster]
    host1
    host2
    host3

2. Use it in your playbook:


    - hosts: 
      - galera_cluster
    roles:
      - CaptTofu.ansible-galera

3. Run your playbook (this is for Docker)

    ansible-playbook -i hosts -u root cluster.yml

Other
------

See: 

- http://github.com/CaptTofu/ansible-galera-haproxy.git - the role for setting up the haproxy setup that would utilize this cluster

- http://github.com/CaptTofu/docker-galera.git - scripts for building the hosts file and launching/deleting containers used in testing this

- http://github.com/CaptTofu/cluster-install.git - the top-level playbook that uses both the ansible-galera and ansible-galera-haproxy roles refered to here 
