# Dreamer's Trial — Check Fragments + Fall Catch
# Context: as @s = dreaming player (dr.trial_active), at @s

# Fall catch — check player Y position (below all platforms = fell)
execute store result score #dr_y ec.var run data get entity @s Pos[1] 1
execute if score #dr_y ec.var matches ..301 run function evercraft:dreaming_realm/challenges/trial/on_fall
execute if score #dr_y ec.var matches ..301 run return 0

# Fragment proximity — collect nearest within 2.5 blocks
execute unless entity @e[type=item_display,tag=dr.frag,distance=..2.5,limit=1,sort=nearest] run return 0

# Collect the fragment
scoreboard players add @s ec.dream_frags 1
playsound block.amethyst_block.break master @s ~ ~ ~ 1.0 1.5
particle totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.1 15 normal @s
kill @e[type=item_display,tag=dr.frag,distance=..2.5,limit=1,sort=nearest]

# Progress message
tellraw @s [{"text":""},{"text":"  ","color":"gray"},{"text":"Dream Fragment collected! ","color":"#9B59B6"},{"text":"(","color":"#D4A574"},{"score":{"name":"@s","objective":"ec.dream_frags"},"color":"#D4A574"},{"text":"/5)","color":"#D4A574"}]

# Check completion (5 fragments)
execute if score @s ec.dream_frags matches 5.. run function evercraft:dreaming_realm/challenges/trial/on_complete
