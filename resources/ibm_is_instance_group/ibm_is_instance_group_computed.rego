package ibmcloud.resources.computed.ibm_is_instance_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_instance_group").resources[_]
}
instances = ret {
    ret := {res.address: object.get(res.attributes, "instances", null) |
        res := resources_map[_]
        true
     }
}
vpc = ret {
    ret := {res.address: object.get(res.attributes, "vpc", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {res.address: object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
managers = ret {
    ret := {res.address: object.get(res.attributes, "managers", null) |
        res := resources_map[_]
        true
     }
}

