resource "aws_security_group_rule" "sg2-rule-add" {
    type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  security_group_id = aws_security_group.sg2.id
  source_security_group_id = aws_security_group.sg1.id

}
