do_token = "dop_v1_3e22be4b0a260b97fcfa54e1cbe3d89a25bdcc14979b69a034f2a9162aea9a8a"
# terraform-cloud/terraform.tfvars
# include = "~/vaults/terraform/secrets.tfvars"


droplets = {
  "dev" = {
    name   = "dev"
    region = "nyc2"
    size   = "s-1vcpu-1gb"
    image  = "ubuntu-22-04-x64"
    tags      = ["webserver", "dev"]
    user_data = <<-EOF
    #cloud-config
    packages:
      - htop
      - git
    users:
      - name: gerry
        sudo: ALL=(ALL) NOPASSWD:ALL
        shell: /bin/bash
        lock_passwd: false
        passwd: "$6$DpwMNhLPWjS.EhFW$uJpKn.ph3f4msYQga94aZPjHK3xtn/gpBskyTnWSJGnxQsCzwTfJ8gXwFjuf.csa3MrQbFAuQs4vM71ZDGMvd."
        ssh_authorized_keys:
          - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA5Scs7UK9JsGYK8Q+Ib/gY71A6Z4HcVG1Nu2AyG/Pv4 ansible-infra
          - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAKMdO3JrvmB4g/YTD9yXEq09LhySJ5itMvliMVhq1RS sander@liquid-design.be
          - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINWvD7Cafa4Fv59P0coDcNMVq1jaWDTJ2VXycA56lvvB Debian-Controller
  EOF
  }



  "test" = {
    name   = "test"
    region = "nyc2"
    size   = "s-1vcpu-1gb"
    image  = "ubuntu-22-04-x64"
    tags      = ["webserver", "test"]
    user_data = <<-EOF
    #cloud-config
    packages:
      - htop
      - git
    users:
      - name: gerry
        sudo: ALL=(ALL) NOPASSWD:ALL
        shell: /bin/bash
        lock_passwd: false
        passwd: "$6$DpwMNhLPWjS.EhFW$uJpKn.ph3f4msYQga94aZPjHK3xtn/gpBskyTnWSJGnxQsCzwTfJ8gXwFjuf.csa3MrQbFAuQs4vM71ZDGMvd."
        ssh_authorized_keys:
          - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA5Scs7UK9JsGYK8Q+Ib/gY71A6Z4HcVG1Nu2AyG/Pv4 ansible-infra
          - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAKMdO3JrvmB4g/YTD9yXEq09LhySJ5itMvliMVhq1RS sander@liquid-design.be
          - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINWvD7Cafa4Fv59P0coDcNMVq1jaWDTJ2VXycA56lvvB Debian-Controller
  EOF
  }


  "prod" = {
    name   = "prod"
    region = "nyc2"
    size   = "s-1vcpu-1gb"
    image  = "ubuntu-22-04-x64"
    tags      = ["webserver", "prod"]
    user_data = <<-EOF
    #cloud-config
    packages:
      - htop
      - git
    users:
      - name: gerry
        sudo: ALL=(ALL) NOPASSWD:ALL
        shell: /bin/bash
        lock_passwd: false
        passwd: "$6$DpwMNhLPWjS.EhFW$uJpKn.ph3f4msYQga94aZPjHK3xtn/gpBskyTnWSJGnxQsCzwTfJ8gXwFjuf.csa3MrQbFAuQs4vM71ZDGMvd."
        ssh_authorized_keys:
          - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA5Scs7UK9JsGYK8Q+Ib/gY71A6Z4HcVG1Nu2AyG/Pv4 ansible-infra
          - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAKMdO3JrvmB4g/YTD9yXEq09LhySJ5itMvliMVhq1RS sander@liquid-design.be
          - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINWvD7Cafa4Fv59P0coDcNMVq1jaWDTJ2VXycA56lvvB Debian-Controller
  EOF
  }
}
