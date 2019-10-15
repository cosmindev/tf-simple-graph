# Copyright (c) 2019 Oracle and/or its affiliates,  All rights reserved.


# VCN
resource "oci_core_vcn" "techflow_vcn" {
  #Required
  cidr_block     = "10.0.0.0/16"
  compartment_id = var.compartment_id

  #Optional
  defined_tags  = {}
  display_name  = "techflow_vcn"
  dns_label     = "techflow"
  freeform_tags = {}
}

# subnet
resource "oci_core_subnet" "techflow_subnet" {
  #Required
  cidr_block     = "10.0.0.0/24"
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.techflow_vcn.id

  #Optional
  display_name               = "techflow_subnet"
  dns_label                  = "techflow"
}
