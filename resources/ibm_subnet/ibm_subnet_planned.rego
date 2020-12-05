package ibmcloud.resources.planned.ibm_subnet
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_subnet"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_subnet").resources[_]
}
notes = ret {
    ret := {res.address: object.get(res.attributes, "notes", null) |
        res := resources_map[_]
        true
     }
}
private = ret {
    ret := {res.address: object.get(res.attributes, "private", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
vlan_id = ret {
    ret := {res.address: object.get(res.attributes, "vlan_id", null) |
        res := resources_map[_]
        true
     }
}
ip_version = ret {
    ret := {res.address: object.get(res.attributes, "ip_version", null) |
        res := resources_map[_]
        true
     }
}
capacity = ret {
    ret := {res.address: object.get(res.attributes, "capacity", null) |
        res := resources_map[_]
        true
     }
}
endpoint_ip = ret {
    ret := {res.address: object.get(res.attributes, "endpoint_ip", null) |
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

