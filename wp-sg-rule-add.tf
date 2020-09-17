resource "aws_security_group_rule" "sg1-rule-add" {
    type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg1.id
  
}