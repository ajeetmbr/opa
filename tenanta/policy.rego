package entitlement.generic
import future.keywords.in
default allow = false
allow {
    some i
    input.roles[_] == data.permissions[input.ccsname][input.appId][input.objectId].roleGrants[i].roleName
    input.permissions[k] == data.permissions[input.ccsname][input.appId][input.objectId].roleGrants[i].allowedGlobalActions[j]
}