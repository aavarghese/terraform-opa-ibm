package ibmcloud.resources.after.ibm_dns_secondary
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_secondary"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_dns_secondary").resources[_]
}
transfer_frequency = ret {
    ret := {res.address: object.get(res.attributes, "transfer_frequency", null) |
        res := resources_map[_]
        true
     }
}
zone_name = ret {
    ret := {res.address: object.get(res.attributes, "zone_name", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
master_ip_address = ret {
    ret := {res.address: object.get(res.attributes, "master_ip_address", null) |
        res := resources_map[_]
        true
     }
}

