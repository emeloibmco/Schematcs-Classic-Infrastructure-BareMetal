provider "ibm" {
  ibmcloud_api_key    = "${var.ibmcloud_api_key}"

}

resource "ibm_compute_ssh_key" "ssh_key_bin" {
  label      = "${var.ssh_label}"
  public_key = "${var.ssh_public_key}"
}

resource "ibm_compute_vm_instance" "terraform_p_sample" {
  hostname                   = "vsi01-provisioner"
  domain                     = "ibm.cloud-landingzone.com"
  os_reference_code          = "${var.os_reference}"
  datacenter                 = "${var.datacenter}"
  network_speed        = 100
  hourly_billing       = true
  private_network_only = false
  cores                = 1
  memory               = 1024
  disks                = [25]
  local_disk           = false
  ssh_key_ids           = [ "${ibm_compute_ssh_key.ssh_key_bin.id}" ]

  connection {
    type = "ssh"
    user = "root"
    private_key = "${var.private_key}"
  }

  provisioner "remote-exec" {
    inline = [
      "yes | sudo apt-get update", 
      "cd ..",
      "wget -nv -P /downloads https://packages.chef.io/files/stable/chef-workstation/0.18.3/ubuntu/18.04/chef-workstation_0.18.3-1_amd64.deb",
      "dpkg -i /downloads/chef-workstation_0.18.3-1_amd64.deb",
      "echo yes | chef generate repo chef-repo",
      "chef generate cookbook chef-repo/cookbooks/cookbooktest",
      "cat <<EOT >> chef-repo/cookbooks/cookbooktest/recipes/default.rb",
      "file "#{ENV['HOME']}/test.txt" do",
      "  content 'This file was created by Chef Infra!'",
      "end",
      "EOT",
      "cd chef-repo",
      "chef-client --local-mode --override-runlist cookbooktest"
    ]
  }
}
