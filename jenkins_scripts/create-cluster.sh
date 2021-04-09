eksctl create cluster \
--name proj-cluster \
--region eu-west-2 \
--nodegroup-name DemoNodes \
--nodes 2 --nodes-min 2 --nodes-max 3 \
--vpc-public-subnets=subnet-0cd0f3a60029debc8,subnet-08767c8fd42f9207d \
--vpc-private-subnets=subnet-0bf94982cde5266f9,subnet-0c5d1317cb8534adc \
--node-type t3.medium \
--with-oidc --ssh-access --ssh-public-key vmkey --managed


#--vpc-public-subnets subnet-08767c8fd42f9207d \
#--vpc-private-subnets subnet-0c5d1317cb8534adc \