provider ibm {
  ibmcloud_api_key      = "${var.ibmcloud_apikey}"
  region                = "${var.ibm_region}"
  generation            = 1
  ibmcloud_timeout      = 60
}

data ibm_resource_group resource_group {
  name = "${var.resource_group}"
}