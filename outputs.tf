# Copyright (c) 2019 Oracle and/or its affiliates,  All rights reserved.

output "techflow_vcn" {
  value = oci_core_vcn.techflow_vcn
}

output "techflow_subnet" {
  value = oci_core_subnet.techflow_subnet
}
