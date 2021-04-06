#Install AWS

#Install terraform
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
sudo apt-get install zip -y
unzip terraform*.zip
sudo mv terraform /usr/local/bin
terraform version

