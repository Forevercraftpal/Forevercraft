# Run as the player — Macro: $(id) = 1-8
# Toggle/equip guild diplomacy title
$scoreboard players set #gd_id adv.temp $(id)

# Guild titles are always unlocked once earned — check ec.gd_title for current
# No bitfield needed — guild titles are granted directly via ec.gd_title

# Toggle: if already active, deactivate
scoreboard players set #cc_did adv.temp 0
execute if score @s ec.gd_title = #gd_id adv.temp run scoreboard players set #cc_did adv.temp 1
execute if score #cc_did adv.temp matches 1 run scoreboard players set @s ec.gd_title 0
execute if score #cc_did adv.temp matches 1 run team leave @s
execute if score #cc_did adv.temp matches 1 run tellraw @s [{text:"[Guild Titles] ",color:"dark_purple"},{text:"Title removed.",color:"gray"}]
execute if score #cc_did adv.temp matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8
execute if score #cc_did adv.temp matches 1 run function evercraft:advantage/gui/refresh_special_titles
execute if score #cc_did adv.temp matches 1 run return 0

# Clear all other titles for mutual exclusivity, then activate
function evercraft:titles/clear_all
scoreboard players operation @s ec.gd_title = #gd_id adv.temp
function evercraft:guild/diplomacy/titles/apply
tellraw @s [{text:"[Guild Titles] ",color:"dark_purple"},{text:"Title applied!",color:"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
function evercraft:advantage/gui/refresh_special_titles
