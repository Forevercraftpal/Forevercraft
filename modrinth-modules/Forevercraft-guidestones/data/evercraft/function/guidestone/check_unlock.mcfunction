# Guidestone — Check if destination is unlocked, or pay 30 levels to unlock
# @s = player. tp_target in storage has destination data.
# Sets #tp_allowed ec.gs_temp to 1 (allowed) or 0 (denied)

# Default: allowed (for backwards compat with entries that have no type)
scoreboard players set #tp_allowed ec.gs_temp 1

# Free check 1: Destination is a guild_stone of the player's guild
execute store result score #dest_guild ec.gs_temp run data get storage evercraft:guidestone tp_target.guild_id
execute if data storage evercraft:guidestone {tp_target:{type:"guild_stone"}} if score #dest_guild ec.gs_temp = @s ec.guild_id if score @s ec.guild_id matches 1.. run return 0

# Free check 2: Destination is the player's own hearthstone
execute store result score #dest_uuid3 ec.gs_temp run data get storage evercraft:guidestone tp_target.uuid3
execute if data storage evercraft:guidestone {tp_target:{type:"hearthstone"}} if score #dest_uuid3 ec.gs_temp = @s companion.id run return 0

# For entries without a type (regular guidestones, old entries), check unlock list
# Get destination ID and player UUID3 for the unlock check
execute store result storage evercraft:guidestone unlock_args.dest_id int 1 run data get storage evercraft:guidestone tp_target.id
execute store result storage evercraft:guidestone unlock_args.uuid3 int 1 run scoreboard players get @s companion.id

# Check if already unlocked
function evercraft:guidestone/check_unlock_macro with storage evercraft:guidestone unlock_args
execute if score #gs_unlocked ec.gs_temp matches 1 run return 0

# Not unlocked — check if player has 30 levels
execute unless entity @s[level=30..] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This link hasn't been unlocked! Costs ",color:"red"},{text:"30 levels",color:"gold",bold:true},{text:" to establish.",color:"red"}]
execute unless entity @s[level=30..] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
execute unless entity @s[level=30..] run scoreboard players set #tp_allowed ec.gs_temp 0
execute unless entity @s[level=30..] run return 0

# Pay 30 levels and unlock
xp add @s -30 levels
function evercraft:guidestone/do_unlock with storage evercraft:guidestone unlock_args
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Link established! ",color:"green"},{text:"(-30 levels)",color:"gold"}]
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1.2
