package ibmcloud.resources.computed.ibm_network_interface_sg_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_network_interface_sg_attachment"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_network_interface_sg_attachment").resources[_]
}
