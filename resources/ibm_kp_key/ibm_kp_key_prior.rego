package ibmcloud.resources.prior.ibm_kp_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_kp_key"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_kp_key").resources[_]
}
key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_name", null) |
        res := resources_map[_]
        true
     }
}
key_protect_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_protect_id", null) |
        res := resources_map[_]
        true
     }
}
