# Dev-Ops Project



## Aims

## Technologies
- Kanban Board: Jira
- Version Control: Git
- CI Server: Jenkins
- Configuration Management: Ansible
- Cloud Server: AWS EC2
- Database Server: AWS RDS
- Containerisation: Docker
- Reverse Proxy: NGINX
- Orchestration Tool: Kubernetes
- Infrastructure Management: Terraform

## VM Setup
```bash
# clone repo
cd Dev-Ops-Proj/main

# Install required packages using:
. setup_vm.sh
# Make sure everything installs properly

# Configure AWS using:
aws configure

# Create a private key on AWS called vmkey.pem
# Put vmkey.pem in 'Dev-Ops-Proj/files/vmkey.pem'
cd Dev-Ops-Proj/main

# Run terraform and ansible using:
. run.sh
# Click yes when needed
# Wait until it automatically SSHs into build VM



# Create jenkins user
# Give sudo access to jenkins user using:
sudo visudo

# Become jenkins user with:
su - jenkins
# Put vmkey.pem in /home/jenkins/.ssh/.ssh
#then:
sudo chmod 400 vmkey.pem 

# AWS configure on jenkins user

# Exit after config:
exit

# On browser go to build VM ip on port 8080

# Start configuring jenkins
```




## Deployment Architecture
 
 ![Deployment architecture](https://github.com/DylanRitchings/Dev-Ops-Proj/blob/main/diagrams/diagram.png)
### Terraform
Terraform is used to create the layout in AWS. With terraform a VPC was created that contained 4 subnets. 2 subnets contain a test and production RDS. One subnet contains a build VM. The final subnet contains the production vm. Security groups are used define what ports each vm and database has open. In a real world application the test vm and RDSs would be private but due to time constraints where not for this project.
### Ansible 
Ansible installs the required software onto the VMs.
## Testing and CI Pipeline (Build VM)
### Jenkins
Jenkins is used to run tests, docker and kuberenetes.
## Docker
Docker compose was used to create containers which would have tests run on them. These tests were run on the test vm.
Containers where then uploaded as images to dockerhub.

### Risk Assessment
[Risk assessment](https://github.com/DylanRitchings/Dev-Ops-Proj/blob/main/diagrams/Risk%20Register.xlsx)
