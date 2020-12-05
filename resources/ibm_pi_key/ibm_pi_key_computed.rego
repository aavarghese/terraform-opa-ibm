package ibmcloud.resources.computed.ibm_pi_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_key"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_key").resources[_]
}
key_id = ret {
    ret := {res.address: object.get(res.attributes, "key_id", null) |
        res := resources_map[_]
        true
     }
}

