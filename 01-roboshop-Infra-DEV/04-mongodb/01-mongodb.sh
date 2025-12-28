#!/bin/bash
# Base packages
yum install -y epel-release
yum install -y vim unzip git ansible

# Create explicit inventory forcing platform-python
cat <<EOF >/tmp/inventory
localhost ansible_connection=local ansible_python_interpreter=/usr/libexec/platform-python
EOF

# ansible-pull -U https://github.com/Sarthakx67/RoboShop-Ansible-Roles-tf.git -e component=mongodb main.yaml
ansible-pull \
  -i /tmp/inventory \
  -U https://github.com/Sarthakx67/RoboShop-Ansible-Roles-tf.git \
  -e component=mongodb \
  main.yaml