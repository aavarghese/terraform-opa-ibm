package ibmcloud.resources.prior.ibm_cis_firewall
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_firewall"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cis_firewall").resources[_]
}
cis_id = ret {
    ret := {res.address: object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {res.address: object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
firewall_type = ret {
    ret := {res.address: object.get(res.attributes, "firewall_type", null) |
        res := resources_map[_]
        true
     }
}

