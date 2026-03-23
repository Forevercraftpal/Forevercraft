# ============================================================
# Convert Random Villager to Match Village Specialization
# Called from create_new.mcfunction after specialization assign
# Runs positioned at the lectern block
# Reads #vs_spec vs.temp (1-6) set by assign.mcfunction
# ============================================================

# Exit if no unconverted villagers nearby
execute unless entity @e[type=villager,tag=!more_professions_verified,distance=..48] run return 0

# Route by specialization ID
execute if score #vs_spec vs.temp matches 1 run function evercraft:village/specialization/convert/mining
execute if score #vs_spec vs.temp matches 2 run function evercraft:village/specialization/convert/fishing
execute if score #vs_spec vs.temp matches 3 run function evercraft:village/specialization/convert/farming
execute if score #vs_spec vs.temp matches 4 run function evercraft:village/specialization/convert/combat
execute if score #vs_spec vs.temp matches 5 run function evercraft:village/specialization/convert/exploration
execute if score #vs_spec vs.temp matches 6 run function evercraft:village/specialization/convert/scholarly

# Highlight the converted villager with glowing (60s) and announce
execute as @e[type=villager,tag=vs.just_converted,distance=..48,limit=1] at @s run effect give @s glowing 60 0 true
execute as @e[type=villager,tag=vs.just_converted,distance=..48,limit=1] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.8
execute as @e[type=villager,tag=vs.just_converted,distance=..48,limit=1] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 30
execute as @e[type=villager,tag=vs.just_converted,distance=..48,limit=1] run tellraw @a[distance=..64] [{text:"[Forevercraft] ",color:"gold"},{text:"A villager has been chosen as the village specialist: ",color:"green"},{"nbt":"CustomName","entity":"@s","interpret":true},{text:"!",color:"green"}]
tag @e[tag=vs.just_converted] remove vs.just_converted
