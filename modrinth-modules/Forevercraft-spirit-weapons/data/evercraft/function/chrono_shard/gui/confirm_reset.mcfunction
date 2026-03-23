# Chrono Shard — confirmed reset execution
# @s = player, at @s

# === Verify player still has a Chrono Shard ===
execute store result score #cs_clear ec.var run clear @s minecraft:echo_shard[custom_data~{chrono_shard:1b}] 1
execute if score #cs_clear ec.var matches 0 run tellraw @s [{"text":"\u26a0 ","color":"red"},{"text":"No Chrono Shard found in inventory!","color":"red"}]
execute if score #cs_clear ec.var matches 0 run function evercraft:chrono_shard/gui/close
execute if score #cs_clear ec.var matches 0 run return 0

# === Dispatch to correct reset function ===
execute if score @s ec.cs_select matches 1 run function evercraft:chrono_shard/reset/affinity
execute if score @s ec.cs_select matches 2 run function evercraft:chrono_shard/reset/bestiary
execute if score @s ec.cs_select matches 3 run function evercraft:chrono_shard/reset/reputation
execute if score @s ec.cs_select matches 4 run function evercraft:chrono_shard/reset/advantage
execute if score @s ec.cs_select matches 5 run function evercraft:chrono_shard/reset/gacha_pity
execute if score @s ec.cs_select matches 6 run function evercraft:chrono_shard/reset/milestones_personal
execute if score @s ec.cs_select matches 7 run function evercraft:chrono_shard/reset/milestones_craftforever
execute if score @s ec.cs_select matches 8 run function evercraft:chrono_shard/reset/pets
execute if score @s ec.cs_select matches 9 run function evercraft:chrono_shard/reset/instance_timers

# === Effects ===
playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.5 1.5
particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 100

# === Announcement ===
tellraw @s [{"text":"\u23f3 ","color":"dark_aqua"},{"text":"Chrono Shard activated. ","color":"white"},{"text":"System has been reset to zero.","color":"red"}]
tellraw @a[distance=..64] [{"text":"\u23f3 ","color":"dark_aqua"},{"selector":"@s"},{"text":" used a Chrono Shard!","color":"gray"}]

# === Close GUI ===
function evercraft:chrono_shard/gui/close
