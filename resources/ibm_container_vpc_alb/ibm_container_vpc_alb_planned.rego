package ibmcloud.resources.planned.ibm_container_vpc_alb
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_vpc_alb"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_container_vpc_alb").resources[_]
}
enable = ret {
    ret := {res.address: object.get(res.attributes, "enable", null) |
        res := resources_map[_]
        true
     }
}
disable_deployment = ret {
    ret := {res.address: object.get(res.attributes, "disable_deployment", null) |
        res := resources_map[_]
        true
     }
}
alb_id = ret {
    ret := {res.address: object.get(res.attributes, "alb_id", null) |
        res := resources_map[_]
        true
     }
}

