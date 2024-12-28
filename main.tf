module "eks_cluster" {
  source          = "./eks-cluster"
  aws_region      = "us-east-1"
  cluster_name    = "KS-eks-cluster"
  vpc_id          = "vpc-0f82d2f253fbc1666"
  subnet_ids      = ["subnet-0a895aad318bb7840", "subnet-05bab8168029e7fbf", "subnet-0c3a15c3038cb4c37", "subnet-0b753eedc4406febd", "subnet-0e80be2a10ff7b3df"]
  node_group_name = "eks-node-group"
  node_instance_type = "t3.medium"
  desired_capacity = 2
  min_capacity     = 1
  max_capacity     = 3
}

output "eks_cluster_endpoint" {
  value = module.eks_cluster.eks_cluster_endpoint
}

output "eks_cluster_name" {
  value = module.eks_cluster.eks_cluster_name
}

