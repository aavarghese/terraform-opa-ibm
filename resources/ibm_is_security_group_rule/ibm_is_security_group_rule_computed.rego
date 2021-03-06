package ibmcloud.resources.computed.ibm_is_security_group_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_group_rule"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_security_group_rule").resources[_]
}
related_crn = ret {
    ret := {res.address: object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}
rule_id = ret {
    ret := {res.address: object.get(res.attributes, "rule_id", null) |
        res := resources_map[_]
        true
     }
}

