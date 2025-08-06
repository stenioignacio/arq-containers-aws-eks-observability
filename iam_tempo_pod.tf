resource "aws_eks_pod_identity_association" "tempo" {
  cluster_name    = aws_eks_cluster.main.name
  namespace       = "tempo"
  service_account = "tempo"
  role_arn        = aws_iam_role.tempo_role.arn
}