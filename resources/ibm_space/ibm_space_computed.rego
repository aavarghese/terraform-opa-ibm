package ibmcloud.resources.computed.ibm_space
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_space"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_space").resources[_]
}

