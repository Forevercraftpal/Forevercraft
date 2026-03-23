# Portal Dial — Apply guidestone binding to item
# Macro args (from eden:temp pd_bind): hand, gs_id, dim, x, y, z, name
# Also reads #pd_primed and #pd_first_bind from ec.gs_temp
# Run as: the player

# Set custom_data with all bound fields (branch on primed since can't inject byte via macro)
$execute if score #pd_primed ec.gs_temp matches 0 run item modify entity @s weapon.$(hand) {"function":"minecraft:set_custom_data","tag":"{portal_dial:1b,evercraft_item:1b,portal_dial_bound:1b,gs_bound_id:$(gs_id),gs_bound_name:\"$(name)\",gs_bound_dim:\"$(dim)\",gs_bound_primed:0b}"}
$execute if score #pd_primed ec.gs_temp matches 1 run item modify entity @s weapon.$(hand) {"function":"minecraft:set_custom_data","tag":"{portal_dial:1b,evercraft_item:1b,portal_dial_bound:1b,gs_bound_id:$(gs_id),gs_bound_name:\"$(name)\",gs_bound_dim:\"$(dim)\",gs_bound_primed:1b}"}

# Set lodestone_tracker to point at guidestone coords (tracked:false prevents auto-clear)
$item modify entity @s weapon.$(hand) {"function":"minecraft:set_components","components":{"minecraft:lodestone_tracker":{"target":{"dimension":"$(dim)","pos":[$(x),$(y),$(z)]},"tracked":false}}}

# Update lore to show bound guidestone
$item modify entity @s weapon.$(hand) {"function":"minecraft:set_lore","lore":[{"text":"Ancient Warping Device","color":"dark_purple","italic":false},"",{"text":"Bound to: ","color":"gray","italic":false,"extra":[{"text":"$(name)","color":"gold","bold":true}]},"",{"text":"Use to teleport to bound location","color":"aqua","italic":true},{"text":"Sneak + Use for remote network menu","color":"light_purple","italic":true}],"mode":"replace_all"}

# Feedback
$tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"Portal Dial bound to ",color:"gold"},{text:"$(name)",color:"light_purple",bold:true},{text:"!",color:"gold"}]
execute if score #pd_first_bind ec.gs_temp matches 1 run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"(30 levels consumed — future rebinds are free)",color:"yellow"}]
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.2
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.01 30

# Clean up
data remove storage eden:temp pd_bind
data remove storage eden:temp pd_lookup
