package ibmcloud.resources.computed.ibm_dns_reverse_record
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_reverse_record"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_reverse_record").resources[_]
}

