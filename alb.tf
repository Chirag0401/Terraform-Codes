module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 6.0"

  name = "my-alb"

  load_balancer_type = "application"

  vpc_id          = "vpc-0b5a55e3a55a43b0c"
  subnets         = ["subnet-05458e8b04436cd45", "subnet-02b2f41be03835937", "subnet-037ec4b1226e14a71"]
  security_groups = ["sg-0588318934053725c"]

  target_groups = [
    {
      name_prefix      = "pref-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      targets = {
        my_target = {
          target_id = "i-045086d460653b377"
          port      = 80
        }
        my_other_target = {
          target_id = "i-0fe3c495c52af4e80"
          port      = 8080
        }
      }
    }
  ]


  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = {
    Environment = "Test"
  }
}