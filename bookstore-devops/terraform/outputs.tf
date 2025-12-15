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

output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.application_load_balancer.dns_name
}

output "alb_zone_id" {
  description = "The zone ID of the Application Load Balancer"
  value       = aws_lb.application_load_balancer.zone_id
}