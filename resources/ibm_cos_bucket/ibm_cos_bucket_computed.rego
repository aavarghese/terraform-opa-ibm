package ibmcloud.resources.computed.ibm_cos_bucket
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cos_bucket").resources[_]
}
s3_endpoint_public = ret {
    ret := {res.address: object.get(res.attributes, "s3_endpoint_public", null) |
        res := resources_map[_]
        true
     }
}
s3_endpoint_private = ret {
    ret := {res.address: object.get(res.attributes, "s3_endpoint_private", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {res.address: object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}

