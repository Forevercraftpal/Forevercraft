# Soulbound — Keep spirit artifacts on death
# Called from death handler. Run as dead player.
# Save spirit artifacts to a per-player vault marker, restore on respawn.

# Ensure player has a uid for vault ownership
execute unless score @s ec.sp_uid matches 1.. run scoreboard players add #uid_counter ec.sp_uid 1
execute unless score @s ec.sp_uid matches 1.. run scoreboard players operation @s ec.sp_uid = #uid_counter ec.sp_uid

# Kill any existing vault for this player (stale from previous death)
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
execute as @e[tag=ec.sp_vault] if score @s ec.sp_owner = #owner_check ec.temp run kill @s

# Spawn a vault marker to hold this player's items
summon marker ~ 320 ~ {Tags:["ec.sp_vault","ec.entity"]}
scoreboard players operation @e[tag=ec.sp_vault,limit=1,sort=nearest] ec.sp_owner = @s ec.sp_uid

# Store mainhand spirit artifact if present
execute if items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run data modify entity @e[tag=ec.sp_vault,limit=1,sort=nearest] data.mainhand set from entity @s SelectedItem
execute if items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run tag @s add ec.sp_death_mainhand

# Store offhand spirit artifact if present (twin)
execute if items entity @s weapon.offhand *[custom_data~{spirit_artifact:true}] run data modify entity @e[tag=ec.sp_vault,limit=1,sort=nearest] data.offhand set from entity @s equipment.offhand
execute if items entity @s weapon.offhand *[custom_data~{spirit_artifact:true}] run tag @s add ec.sp_death_offhand

# Clear spirit artifacts from inventory (prevents them from dropping as items)
clear @s *[custom_data~{spirit_artifact:true}]

# === SPIRIT PROGRESSION — Death resets ===
scoreboard players set @s ec.sp_survive 0
scoreboard players set @s ec.sp_deathless_hours 0
scoreboard players set @s ec.sp_cur_streak 0
