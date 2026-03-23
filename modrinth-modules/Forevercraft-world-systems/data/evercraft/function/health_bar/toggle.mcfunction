# RPG Health Bar — Toggle
# Called via /trigger ec.healthbar
# Context: as @a[scores={ec.healthbar=1..}]

# Check current state before modifying
execute if score @s hb.enabled matches 1 run tag @s add hb.was_enabled
execute if score @s hb.enabled matches 1 run function evercraft:health_bar/leave

# If we just disabled it, notify and return
execute if entity @s[tag=hb.was_enabled] run tellraw @s [{text:"  ◆ ",color:"#D6D0C7"},{text:"Health Bar",color:"gold"},{text:" disabled.",color:"gray"}]
execute if entity @s[tag=hb.was_enabled] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
tag @s remove hb.was_enabled
execute if score @s hb.enabled matches 0 run return 0

# Otherwise, enable
function evercraft:health_bar/join
tellraw @s [{text:"  ◆ ",color:"#D6D0C7"},{text:"Health Bar",color:"gold"},{text:" enabled.",color:"green"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
