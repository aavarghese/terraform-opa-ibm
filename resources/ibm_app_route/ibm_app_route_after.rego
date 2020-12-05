package ibmcloud.resources.after.ibm_app_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_route"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_app_route").resources[_]
}
space_guid = ret {
    ret := {res.address: object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}
domain_guid = ret {
    ret := {res.address: object.get(res.attributes, "domain_guid", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {res.address: object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
path = ret {
    ret := {res.address: object.get(res.attributes, "path", null) |
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
host = ret {
    ret := {res.address: object.get(res.attributes, "host", null) |
        res := resources_map[_]
        true
     }
}

