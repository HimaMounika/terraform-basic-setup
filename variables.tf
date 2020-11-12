# variable "region" {
#   default = "us-east-1"
# }
# variable "counter" {
#  default = 1
#  }

# variable "public_key_path" {
#  description = "Enter the path to the SSH Public Key to add to AWS."
#  default = "./mirr-dev-aws-key-pair.pem"
# }
# variable "key_name" {
#  description = "Key name for SSHing into EC2"
#  default = "mirr-dev-aws-key-pair"
# }
# variable "amis" {
#  description = "Base AMI to launch the instances"
#  default = {
#  us-east-1 = "ami-0947d2ba12ee1ff75" 
#  }
# }

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "elb_port" {
  description = "The port the ELB will use for HTTP requests"
  type        = number
  default     = 80
}