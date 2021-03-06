package ibmcloud.resources.computed.ibm_is_vpc_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_route"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_vpc_route").resources[_]
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
related_crn = ret {
    ret := {res.address: object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}

