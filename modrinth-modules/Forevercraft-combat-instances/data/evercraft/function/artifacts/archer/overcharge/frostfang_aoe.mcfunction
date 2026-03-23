# Frostfang — AoE Frost Zone
# @s = hit entity, position = hit entity location

# Apply effects to all entities in 5-block radius
effect give @e[type=!player,distance=..5] slowness 120 3 false
effect give @e[type=!player,distance=..5] mining_fatigue 120 1 false

# Frost particles
particle snowflake ~ ~0.5 ~ 5 1 5 0.02 60
particle block{block_state:"minecraft:packed_ice"} ~ ~0.5 ~ 5 0.5 5 0.1 40
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0.8

# Feedback to archer
tellraw @p [{"text":"[Shivering Bow] ","color":"aqua"},{"text":"Frostfang ","color":"blue","bold":true},{"text":"— Frost zone deployed!","color":"dark_aqua"}]
