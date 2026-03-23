# Crimson Tempo — Red Gauntlet Enhancement (Mythical)
# Each heal proc adds +10% attack speed (stacks up to 30%), lasts 5s
# Called from dancer/on_hit when heal succeeds with Red Gauntlet

# Increment stacks (max 3)
scoreboard players add @s ec.crimson_stacks 1
execute if score @s ec.crimson_stacks matches 4.. run scoreboard players set @s ec.crimson_stacks 3

# Remove old modifier, apply new one based on stack count
attribute @s attack_speed modifier remove evercraft:crimson_tempo

# 1 stack = +10% attack speed
execute if score @s ec.crimson_stacks matches 1 run attribute @s attack_speed modifier add evercraft:crimson_tempo 0.1 add_multiplied_base
# 2 stacks = +20%
execute if score @s ec.crimson_stacks matches 2 run attribute @s attack_speed modifier add evercraft:crimson_tempo 0.2 add_multiplied_base
# 3 stacks = +30%
execute if score @s ec.crimson_stacks matches 3 run attribute @s attack_speed modifier add evercraft:crimson_tempo 0.3 add_multiplied_base

# Reset per-player decay timer (5 seconds)
scoreboard players set @s ec.crimson_cd 5

# Visual/audio feedback
title @s actionbar {text:"Crimson Tempo!",color:"#DC143C",bold:true}
execute at @s run particle damage_indicator ~ ~1 ~ 0.3 0.3 0.3 0.1 5
playsound minecraft:block.note_block.bell player @s ~ ~ ~ 0.4 1.8
