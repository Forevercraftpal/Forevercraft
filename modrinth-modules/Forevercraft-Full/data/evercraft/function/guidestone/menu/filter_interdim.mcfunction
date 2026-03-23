# Guidestone Menu — Filter registry entries to OTHER dimensions that are PRIMED
# Macro arg: dim (from dim_arg storage, set by caller)
# Iterates working[], appends matches to filtered[]
# Keeps entries where: dim is DIFFERENT from menu_ctx.dim AND primed is 1b

# Check if working is empty
execute unless data storage evercraft:guidestone working[0] run return 0

# Read first entry
data modify storage evercraft:guidestone filter_check set from storage evercraft:guidestone working[0]

# Compare dimensions — if NOT matching menu_ctx.dim AND primed, include it
# Use a score flag: assume different (1), set to 0 if same
scoreboard players set #dim_diff ec.gs_temp 1
$execute if data storage evercraft:guidestone {filter_check:{dim:"$(dim)"}} run scoreboard players set #dim_diff ec.gs_temp 0

# If different dimension (flag=1) AND entry is primed, include it
execute if score #dim_diff ec.gs_temp matches 1 if data storage evercraft:guidestone {filter_check:{primed:1b}} run data modify storage evercraft:guidestone filtered append from storage evercraft:guidestone filter_check

# Remove first entry and recurse
data remove storage evercraft:guidestone working[0]
function evercraft:guidestone/menu/filter_interdim with storage evercraft:guidestone dim_arg
