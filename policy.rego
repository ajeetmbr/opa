package entitlement.object_ent
import future.keywords.in
allowed_access [grant] {
    some i
    input.roles[_] == data.permissions[input.ccsname][input.appId][input.objectId].roleGrants[i].roleName
    grant = data.permissions[input.ccsname][input.appId][input.objectId].roleGrants[i].allowedGlobalActions[_]
}