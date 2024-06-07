resource "aws_ec2_client_vpn_endpoint" "main" {
  description            = "VPN Client"
  server_certificate_arn = aws_acm_certificate.cert.arn
  client_cidr_block      = "10.0.0.0/16"
  vpc_id                 = aws_vpc.main.id
  dns_name               = "AWS.ESGI.LOCAL"

  authentication_options {
    type                       = "certificate-authentication"
    root_certificate_chain_arn = aws_acm_certificate.root_cert.arn
  }

  connection_log_options {
    enabled               = true
    cloudwatch_log_group  = aws_cloudwatch_log_group.lg.name
    cloudwatch_log_stream = aws_cloudwatch_log_stream.ls.name
  }
}