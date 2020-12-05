package ibmcloud.resources.planned.ibm_network_gateway
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_gateway"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_network_gateway").resources[_]
}
post_install_script_uri = ret {
    ret := {res.address: object.get(res.attributes, "post_install_script_uri", null) |
        res := resources_map[_]
        true
     }
}
members = ret {
    ret := {res.address: object.get(res.attributes, "members", null) |
        res := resources_map[_]
        true
     }
}
ssh_key_ids = ret {
    ret := {res.address: object.get(res.attributes, "ssh_key_ids", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

