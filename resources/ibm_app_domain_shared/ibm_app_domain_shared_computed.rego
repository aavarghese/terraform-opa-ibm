package ibmcloud.resources.computed.ibm_app_domain_shared
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_domain_shared"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_app_domain_shared").resources[_]
}

