data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "bastion" {
  ami           = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = "t2.micro"
  subnet_id     = module.quay_vpc.public_subnets[0]
  key_name = var.bastion_keypair
  associate_public_ip_address = true
  vpc_security_group_ids = [ aws_security_group.db_security_group.id ]
  user_data = data.cloudinit_config.server_config.rendered

  tags = {
    Name = "${var.prefix}-bastion"
  }

  provisioner "file" {
    source      = "fix_seq.py"
    destination = "/home/ec2-user/fix_seq.py"
  }

  provisioner "file" {
    source      = "quay_db_schema.dump.sql.update.sql"
    destination = "/home/ec2-user/quay_db_schema.dump.sql.update.sql"
  }

    connection {
    host     = "${aws_instance.bastion.public_dns}"
    type     = "ssh"
    user     = "ec2-user"
    private_key    = "${file("syed-quaydev-ssh-keypair.pem")}"
  }

}

data "cloudinit_config" "server_config" {
  gzip          = true
  base64_encode = true
  part {
    content_type = "text/cloud-config"
    content = file("${path.module}/bastion-cloud-init.yaml")
  }
}