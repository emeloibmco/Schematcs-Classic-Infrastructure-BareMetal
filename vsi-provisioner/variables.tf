variable "ibmcloud_api_key" {
  description = "Enter your IBM Cloud API Key, you can get your IBM Cloud API key using: https://console.bluemix.net/iam#/apikeys"
}

variable "os_reference" {
  description = ""
  default = "UBUNTU_18_64"
}

variable "datacenter" {
  description = ""
  default = "dal10"
}

variable "ssh_label" {
  default = "Personal"
}

variable "ssh_public_key" {
}

variable "private_key" {
  default = "-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAuOMQUNnWLrHGHckxqRy8cHTTsMcFnifgC9oXZfw8Vz7LQ679
I5l/Nmj3ckKmBM88FWVX4dP8ZNgm/iEMjYrbUwL3m3oQ3tA/L9f2Gz7oRCDQhCvs
fEnqbxoOe8AapeuuIa5HCC99qK1V1wYIf7+/jkGI1dkfsXiWDS5iQj0loK3ASm70
Wtcwtx5+ct/uugFbizJF3SE4Tk4PLt4nBjL00W5sFjIjH1HNAznmptqPbCSRxK7f
n6nCnMEYvC/jIFiNosGDpPFmO/3vKpOHPJ0x6gNkJrC8dgCGDn5DpxL6gQmX4Zx9
1d1LFcYkJHR4ahDZ1Z12OjM2DEFlk3byUB5L4wIDAQABAoIBAQCL0pT1QDkdqS5W
OmEHLwdH2OJ7j5gtCqUC8ZW+eCq+JGwerMkeUiiF4o44aDUb8AnVeIYk8GexcFLU
3/OZW8kQl27gs0js6PrQWPfzlPidBWAMhRdcy52zFjab2iWNE5bmO+HWS+wxU51W
d2aYDlB06hTs/T5dvf9kyo5e39WEFHoGmfUD0cn/2d3/0yEtte5AHbmnDniUXAzv
3+Bsi3+cdLmtXpg4Tkt96V9PeyXFO+l1VpJtE5VobtIP+6VQtzmH5yrB9Cbt+wkY
7EfkF+5roWRilQpnYVy0vDLNgXdYLMu7Q/y0SAPWYbO576VVNnsLBdwFdP8bwGcm
5IhHLXBpAoGBANmROLdwLZizdVFKrYmhgKqPSMch2P8kUWLVKWSVyXQCIGmnzpne
dI61WIKfaFHgvcVPqFInmbxrJUwgQRfn86hnMDj4xN9x/P1AEH4rTF2/lgDMvEaL
AJGFEIR7tM1oRx/1qGkiLK9BQB07RT/CvV02Qx92RQjF3SE/LPsGzjUVAoGBANmL
+xVjkwc6E4mtOXX3RQTF0qVJC0QiugqWvlmDIDbRwFLiC5i2ke0iB3Dyp3iYfIum
FtGhSmyJLWBSqVzIUWvsaHp9puZSqHc2j7zKwsOWf6GctlLyoURyPixKLTN3me1+
21MR03kKdyvmfIAzsJpJ2C1Vh8+l0KcccJsDOSsXAoGBAMSzAbb+6Ypb/R4QyRJc
fEo3ntHCLUCHIjmbhH/W2DpUzd8YArakI3b+R1ZZLmSQLqIb4Y7dFKX/rMnFg3RM
lcLUAAoSB1QI53RDHmYjWTiMxN5WO4X/l/T4e7V7bjwjIeKoI6lhZ0rPUFrdQj9i
HfgO3eKs9771vHWZe148ieP9AoGAX3DaJvgYeQMxryUgIHDrBr0DPSBeoPXbSOn5
eKveZi5/gd1J2SW/v5k+Sn8qme3MNjgXqsBoNlW4YpnhU6NOlVqSO6sEneeFoUd+
qAUMjWJpfC2Uj6+CsNSuEiA41GuUTG1rK3aWoHPG9KuZ02TaBdZ/0OPFQYQtliMU
A+3WFuECgYAObpt5ZFXwiHQ7/q8g8fY3R/UkiJzRxR1cPOcGZwgzWNnZPRuFJckn
P66Wz3DacEVyIxZawbibksyJc6HSepJ/ko51dGAqfxblkN0zi8uVsk+JfP+IWt2w
4noDxAJyFkfDNBsJsO9VWUE+LleAMywI2RLbGxXHWNG1hgJ1tqUARw==
-----END RSA PRIVATE KEY-----
"
}