# Tide Trim - Summon Guardian Ally (Full Set)
# Summons a friendly guardian that fights for you

# Only work if in water
execute unless entity @s[predicate=evercraft:trim/in_water] run tellraw @s [{"text":"[Tide Trim] ","color":"dark_aqua"},{"text":"You must be in water to summon a Guardian!","color":"red"}]
execute unless entity @s[predicate=evercraft:trim/in_water] run return 0

# Check if already has a guardian ally
execute if entity @e[type=guardian,tag=tide_guardian_ally,limit=1] at @s if entity @e[type=guardian,tag=tide_guardian_ally,distance=..64] run tellraw @s [{"text":"[Tide Trim] ","color":"dark_aqua"},{"text":"Your Guardian ally is still active!","color":"yellow"}]
execute if entity @e[type=guardian,tag=tide_guardian_ally,limit=1] at @s if entity @e[type=guardian,tag=tide_guardian_ally,distance=..64] run return 0

# Summon the guardian ally
summon guardian ~ ~ ~ {Tags:["tide_guardian_ally","join_my_team"],CustomName:{"text":"Guardian Ally","color":"aqua"},Glowing:1b,active_effects:[{id:"minecraft:glowing",amplifier:0b,duration:-1,show_particles:0b}]}
function evercraft:trim/ally_join_team

# Effects
playsound minecraft:entity.guardian.ambient player @s ~ ~ ~ 1 0.8
playsound minecraft:block.conduit.activate player @s ~ ~ ~ 1 1
particle minecraft:bubble_column_up ~ ~ ~ 1 1 1 0.1 50

tellraw @s [{"text":"[Tide Trim] ","color":"dark_aqua"},{"text":"A Guardian rises to aid you!","color":"aqua"}]
