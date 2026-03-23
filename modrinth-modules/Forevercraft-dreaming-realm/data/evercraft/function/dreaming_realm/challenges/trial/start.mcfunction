# Dreamer's Trial — Start
# Spawn 5 Dream Fragment item_displays on the SE floating platforms
# Context: as @s = dreaming player
# SE area platforms at various heights from Y=302 to Y=309

tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"The Dreamer's Trial","color":"#3498DB","bold":true},{"text":" — Collect 5 Dream Fragments from the floating platforms!","color":"#D4A574","italic":true}]
playsound block.beacon.activate master @s ~ ~ ~ 0.5 1.5

# Tag player as in trial
tag @s add dr.trial_active
scoreboard players set @s ec.dream_frags 0
scoreboard players set #dr_plat_toggle ec.var 0

# Spawn 5 Dream Fragment item_displays on different platforms
# Platform positions (relative to dr.center): varied heights in SE quadrant
execute at @e[type=marker,tag=dr.center,limit=1] run summon item_display ~11 303 ~11 {item:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:enchantment_glint_override":true}},Tags:["ec.dream_entity","dr.frag"],Glowing:1b,billboard:"center"}
execute at @e[type=marker,tag=dr.center,limit=1] run summon item_display ~16 304 ~11 {item:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:enchantment_glint_override":true}},Tags:["ec.dream_entity","dr.frag"],Glowing:1b,billboard:"center"}
execute at @e[type=marker,tag=dr.center,limit=1] run summon item_display ~11 305 ~16 {item:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:enchantment_glint_override":true}},Tags:["ec.dream_entity","dr.frag"],Glowing:1b,billboard:"center"}
execute at @e[type=marker,tag=dr.center,limit=1] run summon item_display ~17 306 ~15 {item:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:enchantment_glint_override":true}},Tags:["ec.dream_entity","dr.frag"],Glowing:1b,billboard:"center"}
execute at @e[type=marker,tag=dr.center,limit=1] run summon item_display ~12 309 ~13 {item:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:enchantment_glint_override":true}},Tags:["ec.dream_entity","dr.frag"],Glowing:1b,billboard:"center"}

# Start platform toggle schedule (every 10 seconds)
schedule function evercraft:dreaming_realm/challenges/trial/toggle_platforms 10s
