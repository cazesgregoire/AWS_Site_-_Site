VpcName           = "VPC_Sophos"
VpcCidr           = "10.0.0.0/16"
PublicSubnetName  = "develop-tf-subnet-public"
PublicSubnetCidr  = "10.0.1.0/24"
PrivateSubnetCidr = "10.0.2.0/24"
PrivateSubnetName = "develop-tf-subnet-private"
CidrInternet      = "0.0.0.0/0"
PublicRTName      = "develop-tf-route-table-public"
PrivateRTName     = "develop-tf-route-table-private"
IGWName           = "develop-tf-igw"
NGWName           = "NAT_Gateway_Sophos"
InstanceType      = "t2.micro"
InstanceName      = "develop-amz-linux"
AmiId             = "ami-06935448000742e6b"
instance_type     = "t2.micro"
tag_name          = "amzlinux"
amiIdNat          = "ami-02a0890431c48de97"
OnPremCIDR        = "192.168.0.0/24"
AWS_VPC           = "10.0.0.0/16"