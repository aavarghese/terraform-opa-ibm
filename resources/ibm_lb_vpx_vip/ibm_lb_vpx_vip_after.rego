package ibmcloud.resources.after.ibm_lb_vpx_vip
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_vpx_vip"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_lb_vpx_vip").resources[_]
}
source_port = ret {
    ret := {res.address: object.get(res.attributes, "source_port", null) |
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
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
load_balancing_method = ret {
    ret := {res.address: object.get(res.attributes, "load_balancing_method", null) |
        res := resources_map[_]
        true
     }
}
persistence = ret {
    ret := {res.address: object.get(res.attributes, "persistence", null) |
        res := resources_map[_]
        true
     }
}
security_certificate_id = ret {
    ret := {res.address: object.get(res.attributes, "security_certificate_id", null) |
        res := resources_map[_]
        true
     }
}
virtual_ip_address = ret {
    ret := {res.address: object.get(res.attributes, "virtual_ip_address", null) |
        res := resources_map[_]
        true
     }
}
nad_controller_id = ret {
    ret := {res.address: object.get(res.attributes, "nad_controller_id", null) |
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

