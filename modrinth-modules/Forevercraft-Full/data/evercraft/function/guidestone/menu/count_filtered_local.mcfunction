# Guidestone Menu — Count filtered local (same-dimension) entries for page cap
# Sets #gs_max ec.gs_temp to the count of same-dim entries

data modify storage evercraft:guidestone working set from storage evercraft:guidestone registry
data modify storage evercraft:guidestone filtered set value []
data modify storage evercraft:guidestone dim_arg set value {}
data modify storage evercraft:guidestone dim_arg.dim set from storage evercraft:guidestone menu_ctx.dim
function evercraft:guidestone/menu/filter_same_dim with storage evercraft:guidestone dim_arg
execute store result score #gs_max ec.gs_temp run data get storage evercraft:guidestone filtered
