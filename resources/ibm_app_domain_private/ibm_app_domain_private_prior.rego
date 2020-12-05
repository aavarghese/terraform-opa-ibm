package ibmcloud.resources.prior.ibm_app_domain_private
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_domain_private"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_app_domain_private").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

