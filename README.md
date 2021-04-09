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
Docker compose was used to create containers which have tests run on them. These tests were run on the test vm.
Containers are then uploaded as images to dockerhub. This was managed by Jenkins
## Kubernetes
Kubernetes was meant to be used for deploying the application into a cluster for production

## NGINX
NGINX was meant to be used as a reverse proxy to direct traffic to the correct VM.

### Risk Assessment
A risk is an event that is uncertain that will cause an effect on an objective.
* Qualitative risk assessment where risks are split into impact and likelihood.
* **Risk Category:** What the risk impacts. For this current project completion rate is the most important category due to to the limited time for completion.
* **Likelihood:** How likely the event is to occure.
* **Impact:** How much the category is impacted if the event occurs.
* **Matrix:** A matrix is used to assess the priority of each risk.
A response to the risk is then formulated. The response will either remove the risk completely, reduce its serverity or explain what was done to attempt to reduce the serverity.

[Risk assessment](https://github.com/DylanRitchings/Dev-Ops-Proj/blob/main/diagrams/Risk%20Register.xlsx)

### Jira
Jira was used to manage the project sprints.
[Jira](https://book-reviewer.atlassian.net/secure/RapidBoard.jspa?projectKey=DO&rapidView=3&view=planning.nodetail&atlOrigin=eyJpIjoiMTI1YzhhN2RhM2MzNGUyYTgxNDUzOTMzNGIzMGQ0N2QiLCJwIjoiaiJ9)
