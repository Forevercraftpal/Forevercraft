# Soul Harvest — Eyelander + True Stacking Enhancement
# Each kill within 15s stacks souls (max 5). Effects scale with soul count:
# 1 soul = Str I + Speed I, 2 = Str II + Speed I, 3 = Str III + Speed II
# 4 = Str III + Speed II + Resistance I, 5 = all above + brief invulnerability flash
advancement revoke @s only evercraft:artifacts/abilities/soul_harvest_trigger

# Increment soul counter
scoreboard players add @s ec.eyelander_souls 1

# Reset per-player soul decay timer (15 seconds)
scoreboard players set @s ec.soul_cd 15

# Base: Strength I + Speed I (1 soul)
effect give @s strength 15 0 false
effect give @s speed 15 0 false

# 2+ souls: Strength II
execute if score @s ec.eyelander_souls matches 2.. run effect give @s strength 15 1 false

# 3+ souls: Strength III + Speed II
execute if score @s ec.eyelander_souls matches 3.. run effect give @s strength 15 2 false
execute if score @s ec.eyelander_souls matches 3.. run effect give @s speed 15 1 false

# 4+ souls: Also Resistance I
execute if score @s ec.eyelander_souls matches 4.. run effect give @s resistance 15 0 false

# 5 souls: Invulnerability flash + soul explosion — cap at 5
execute if score @s ec.eyelander_souls matches 5.. run effect give @s resistance 1 4 false
execute if score @s ec.eyelander_souls matches 5.. run title @s actionbar {text:"SOUL STORM!",color:"#00FFCC",bold:true}
execute if score @s ec.eyelander_souls matches 5.. at @s run particle soul ~ ~1 ~ 1.5 1 1.5 0.1 50
execute if score @s ec.eyelander_souls matches 5.. at @s run playsound minecraft:entity.wither.break_block player @a[distance=..16] ~ ~ ~ 0.5 1.5
execute if score @s ec.eyelander_souls matches 5.. run scoreboard players set @s ec.eyelander_souls 5

# Cap at 5 for all cases
execute if score @s ec.eyelander_souls matches 6.. run scoreboard players set @s ec.eyelander_souls 5

# Visual/audio — escalating
particle soul ~ ~1 ~ 0.3 0.5 0.3 0.02 10
execute if score @s ec.eyelander_souls matches 3.. at @s run particle soul ~ ~1 ~ 0.8 0.8 0.8 0.05 20
playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.2 2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
