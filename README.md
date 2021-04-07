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

# In build VM configure AWS using:
aws configure

# Put vmkey.pem in jenkins

# Exit after config:
exit

# On browser go to build VM ip on port 8080
# Start configuring jenkins
```




## Deployment Architecture
 
### Terraform

### Ansible 

## Testing and CI Pipeline

### Jenkins
Webhooks


## Database 

## Project Planning


### Reverse Proxy (NGINX)
