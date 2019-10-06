variable "public_key_path" {}

resource "digitalocean_ssh_key" "ssh" {
  name       = "jenkins-x-ssh-key"
  public_key = "${public_key_path}"
}
resource "digitalocean_droplet" "jenkinsx" {
  image    = "ubuntu-18-04-x64"
  name     = "jenkins-x"
  region   = "nyc3"
  size     = "s-1vcpu-2gb"
  ssh_keys = ["${digitalocean_ssh_key.ssh.fingerprint}"]
}