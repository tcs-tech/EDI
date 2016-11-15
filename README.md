#Requirements
Ansible 1.4 or higher and platform.

#System Requirements
RedHat7.x & CentOS7.x Minimal Install

#How to install Ansible
 (1) yum install -y git epel-release<br>
 (2) yum makecache<br>
 (3) yum install -y ansible git<br>
 (4) git clone [GitHub URL]<br>
 (5) cd EDI/<br>
 (6) ansible-playbook -i host install.yml -vvv <br>
 
#構文チェック <br>
ansible-playbook install.yml --syntax-check <br>

#dry-run <br>
ansible-playbook -i host install.yml --check
