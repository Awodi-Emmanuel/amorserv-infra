resource "aws_db_instance" "db" {
  identifier             = var.db_identifier 
  instance_class         = var.db_instance_class 
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0"
  # db_name                = var.db_name
  username               = var.username
  password               = var.db_pass
  vpc_security_group_ids = var.vpc_security_group_ids
  # db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name

  skip_final_snapshot = true
}

# resource "aws_db_subnet_group" "db_subnet_group" {
#   name       = "${var.db_identifier}-subnet-group"
#   subnet_ids = var.subnet_ids
# }

output "db_endpoint" {
  value = aws_db_instance.db.endpoint
}

