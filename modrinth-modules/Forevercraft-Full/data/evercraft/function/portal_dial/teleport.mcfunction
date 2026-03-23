# Portal Dial — Teleport to bound lodestone (or open remote GUI if sneaking)
# Triggered by advancement when player uses a compass with portal_dial:true
# No XP cost to teleport (binding costs 30 levels, handled separately)

advancement revoke @s only evercraft:portal_dial/used

# --- Cooldown check (prevents spam from holding right-click) ---
execute if score @s ec.dial_cd matches 1.. run return 0
scoreboard players set @s ec.dial_cd 3

# --- Sneak check: open remote Guidestone GUI instead of teleporting ---
scoreboard players set #pd_gs_check ec.gs_temp 0

# Check mainhand for guidestone binding (gs_bound_id >= 1)
execute if predicate evercraft:is_sneaking if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] if data entity @s SelectedItem.components."minecraft:custom_data".gs_bound_id store result score #pd_gs_check ec.gs_temp run data get entity @s SelectedItem.components."minecraft:custom_data".gs_bound_id
execute if predicate evercraft:is_sneaking if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] if score #pd_gs_check ec.gs_temp matches 1.. run return run function evercraft:portal_dial/open_remote_gui {hand:"mainhand"}

# Check offhand for guidestone binding
scoreboard players set #pd_gs_check ec.gs_temp 0
execute if predicate evercraft:is_sneaking if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] if data entity @s equipment.offhand.components."minecraft:custom_data".gs_bound_id store result score #pd_gs_check ec.gs_temp run data get entity @s equipment.offhand.components."minecraft:custom_data".gs_bound_id
execute if predicate evercraft:is_sneaking if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] if score #pd_gs_check ec.gs_temp matches 1.. run return run function evercraft:portal_dial/open_remote_gui {hand:"offhand"}

# Sneaking but no valid guidestone binding (regular lodestone, or gs_bound_id:0)
execute if predicate evercraft:is_sneaking if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true,portal_dial_bound:true}] run return run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"Your Portal Dial is bound to a regular lodestone. Bind to a ",color:"gray",italic:true},{text:"Guidestone",color:"light_purple",italic:true},{text:" for remote network access!",color:"gray",italic:true}]
execute if predicate evercraft:is_sneaking if items entity @s weapon.offhand compass[custom_data~{portal_dial:true,portal_dial_bound:true}] run return run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"Your Portal Dial is bound to a regular lodestone. Bind to a ",color:"gray",italic:true},{text:"Guidestone",color:"light_purple",italic:true},{text:" for remote network access!",color:"gray",italic:true}]

# --- Normal teleport (not sneaking) ---
# Check if the Portal Dial has a lodestone target bound
# Try offhand first, then mainhand
data modify storage eden:temp portal_dial.tp.dimension set from entity @s Dimension
data modify storage eden:temp portal_dial.tp.x set from entity @s Pos[0]
data modify storage eden:temp portal_dial.tp.y set from entity @s Pos[1]
data modify storage eden:temp portal_dial.tp.z set from entity @s Pos[2]

# Check offhand
execute if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] run data modify storage eden:temp portal_dial.tp.dimension set from entity @s equipment.offhand.components.minecraft:lodestone_tracker.target.dimension
execute if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] run data modify storage eden:temp portal_dial.tp.x set from entity @s equipment.offhand.components.minecraft:lodestone_tracker.target.pos[0]
execute if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] run data modify storage eden:temp portal_dial.tp.y set from entity @s equipment.offhand.components.minecraft:lodestone_tracker.target.pos[1]
execute if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] run data modify storage eden:temp portal_dial.tp.z set from entity @s equipment.offhand.components.minecraft:lodestone_tracker.target.pos[2]

# Check mainhand
execute if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] run data modify storage eden:temp portal_dial.tp.dimension set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.dimension
execute if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] run data modify storage eden:temp portal_dial.tp.x set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[0]
execute if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] run data modify storage eden:temp portal_dial.tp.y set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[1]
execute if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] run data modify storage eden:temp portal_dial.tp.z set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.pos[2]

# Verify we actually have lodestone data (check if dimension changed from player pos)
execute unless data storage eden:temp portal_dial.tp{} run return fail

# Check if lodestone_tracker exists on the item at all
execute if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] unless data entity @s SelectedItem.components."minecraft:lodestone_tracker".target run return run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"Your Portal Dial is not bound to a lodestone! Right-click a lodestone to bind it.",color:"red"}]
execute if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] unless data entity @s equipment.offhand.components."minecraft:lodestone_tracker".target run return run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"Your Portal Dial is not bound to a lodestone! Right-click a lodestone to bind it.",color:"red"}]

# If bound to a guidestone, validate it still exists before teleporting
# Read gs_bound_id from whichever hand has the dial
scoreboard players set #pd_gs_check ec.gs_temp 0
execute if items entity @s weapon.mainhand compass[custom_data~{portal_dial:true}] if data entity @s SelectedItem.components."minecraft:custom_data".gs_bound_id store result score #pd_gs_check ec.gs_temp run data get entity @s SelectedItem.components."minecraft:custom_data".gs_bound_id
execute if items entity @s weapon.offhand compass[custom_data~{portal_dial:true}] if score #pd_gs_check ec.gs_temp matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data".gs_bound_id store result score #pd_gs_check ec.gs_temp run data get entity @s equipment.offhand.components."minecraft:custom_data".gs_bound_id

# gs_bound_id >= 1 means guidestone-bound — verify it's still in the registry
execute if score #pd_gs_check ec.gs_temp matches 1.. run function evercraft:portal_dial/check_gs_exists
execute if score #pd_gs_check ec.gs_temp matches 1.. if score #pd_found ec.gs_temp matches 0 run return run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"The Guidestone your Portal Dial was bound to has been destroyed!",color:"red"}]

# Execute teleport
function evercraft:portal_dial/exec_tp with storage eden:temp portal_dial.tp
