# Pack Mule — Check Clicks
# @s = player in mule menu

# Close button
execute as @e[type=interaction,tag=ec.mule_close_btn,distance=..5,limit=1] if data entity @s interaction run function evercraft:buddy/abilities/pack_mule/close
execute as @e[type=interaction,tag=ec.mule_close_btn,distance=..5,limit=1] if data entity @s interaction run data remove entity @s interaction

# Slot clicks — determine which slot, then dispatch
execute as @e[type=interaction,tag=ec.mule_s0,distance=..5,limit=1] if data entity @s interaction run data modify storage evercraft:buddy mule_temp.slot set value "s0"
execute as @e[type=interaction,tag=ec.mule_s0,distance=..5,limit=1] if data entity @s interaction run function evercraft:buddy/abilities/pack_mule/on_slot_click
execute as @e[type=interaction,tag=ec.mule_s0,distance=..5] if data entity @s interaction run data remove entity @s interaction

execute as @e[type=interaction,tag=ec.mule_s1,distance=..5,limit=1] if data entity @s interaction run data modify storage evercraft:buddy mule_temp.slot set value "s1"
execute as @e[type=interaction,tag=ec.mule_s1,distance=..5,limit=1] if data entity @s interaction run function evercraft:buddy/abilities/pack_mule/on_slot_click
execute as @e[type=interaction,tag=ec.mule_s1,distance=..5] if data entity @s interaction run data remove entity @s interaction

execute as @e[type=interaction,tag=ec.mule_s2,distance=..5,limit=1] if data entity @s interaction run data modify storage evercraft:buddy mule_temp.slot set value "s2"
execute as @e[type=interaction,tag=ec.mule_s2,distance=..5,limit=1] if data entity @s interaction run function evercraft:buddy/abilities/pack_mule/on_slot_click
execute as @e[type=interaction,tag=ec.mule_s2,distance=..5] if data entity @s interaction run data remove entity @s interaction
