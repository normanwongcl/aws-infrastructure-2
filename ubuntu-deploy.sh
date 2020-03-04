#ubuntu setup

#Check if python is installed
python -v

# Install python package manager
apt-get update 
apt install python pip
pip install --upgrade pip
unzip terraform_0.12.19_linux_amd64.zip -d /bin/terraform

pip install --upgrade awscli

apt-get install software-properties-common

apt-add-repository ppa:ansible/ansible

apt-get install ansible

ssh-keygen
ssh-agent bash
ssh-add ~/.ssh/ssh

# See if ssh is added
ssh-add -l

# Create an aws profile to separate different Access key and password
aws configure --profile superhero

# Create private and public hosted zone in route 53
aws route53 create-reusable-delegation-set --caller-reference 1224 --profile superhero