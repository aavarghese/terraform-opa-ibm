package ibmcloud.resources.computed.ibm_iam_user_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_user_policy"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_user_policy").resources[_]
}
resources = ret {
    ret := {res.address: object.get(res.attributes, "resources", null) |
        res := resources_map[_]
        true
     }
}
version = ret {
    ret := {res.address: object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}

