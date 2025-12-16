output "cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "ecr_backend_repo_url" {
  value = aws_ecr_repository.backend.repository_url
}

output "ecr_frontend_repo_url" {
  value = aws_ecr_repository.frontend.repository_url
}
output "lb_controller_role_arn" {
  value = aws_iam_role.lb_controller_role.arn
}