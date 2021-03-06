package ibmcloud.resources.prior.ibm_pi_pvm_snapshots
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_pvm_snapshots"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_pi_pvm_snapshots").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_name = ret {
    ret := {res.address: object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}

