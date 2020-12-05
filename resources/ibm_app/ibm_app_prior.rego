package ibmcloud.resources.prior.ibm_app
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_app").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {res.address: object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}

