package ibmcloud.resources.prior.ibm_schematics_state
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_state"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_schematics_state").resources[_]
}
template_id = ret {
    ret := {res.address: object.get(res.attributes, "template_id", null) |
        res := resources_map[_]
        true
     }
}
workspace_id = ret {
    ret := {res.address: object.get(res.attributes, "workspace_id", null) |
        res := resources_map[_]
        true
     }
}

