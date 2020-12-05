package ibmcloud.resources.planned.ibm_is_flow_log
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_flow_log"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_flow_log").resources[_]
}
target = ret {
    ret := {res.address: object.get(res.attributes, "target", null) |
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
storage_bucket = ret {
    ret := {res.address: object.get(res.attributes, "storage_bucket", null) |
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
active = ret {
    ret := {res.address: object.get(res.attributes, "active", null) |
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

