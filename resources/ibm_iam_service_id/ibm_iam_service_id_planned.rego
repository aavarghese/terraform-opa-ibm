package ibmcloud.resources.planned.ibm_iam_service_id
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_service_id"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_service_id").resources[_]
}
description = ret {
    ret := {res.address: object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

