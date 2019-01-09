devops-user 
=========

devops-user role creates user (defined in user_name variable), 
generates ssh key, 
set password (defined in user_password variable) sha-512 based, 
copies ssh-pubkey ( when copy_ssh_pubkey: yes) fron server (defined in primary_server variable) onto rest host for key based authentication and 
also adds user into sudoers (when user_is_sudoer: yes) with complete & NOPASSWD parameter.

Role Variables
--------------
Following are the variable defined in defaults with default value 

user_name: devops
primary_server: bastions
user_password: r3dh4t1!
copy_ssh_pubkey: yes
user_is_sudoer: yes



Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: devops_user, user_password: redhat }

License
-------

GPL

Author Information
------------------

GPTE
