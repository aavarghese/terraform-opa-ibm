package ibmcloud.resources.computed.ibm_container_worker_pool_zone_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_worker_pool_zone_attachment"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_worker_pool_zone_attachment").resources[_]
}
private_vlan_id = ret {
    ret := {res.address: object.get(res.attributes, "private_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
public_vlan_id = ret {
    ret := {res.address: object.get(res.attributes, "public_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
region = ret {
    ret := {res.address: object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
worker_count = ret {
    ret := {res.address: object.get(res.attributes, "worker_count", null) |
        res := resources_map[_]
        true
     }
}

