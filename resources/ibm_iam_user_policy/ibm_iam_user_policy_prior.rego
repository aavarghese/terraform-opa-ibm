package ibmcloud.resources.prior.ibm_iam_user_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_user_policy"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_iam_user_policy").resources[_]
}
ibm_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_id", null) |
        res := resources_map[_]
        true
     }
}
