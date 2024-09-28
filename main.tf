resource "aws_security_group" "main" {
  name        = local.sg_final_name
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  egress { 
    from_port        = 0
    to_port          = 0
    protocol         = "-1" #-1 for everything
    cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
  }

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
    Name = local.sg_final_name
    }
  )
}