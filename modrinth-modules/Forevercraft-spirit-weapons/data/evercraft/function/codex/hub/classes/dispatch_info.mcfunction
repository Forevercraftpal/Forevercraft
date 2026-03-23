# Classes — Dispatch Class Info (Macro)
# Macro arg: class_id (1-13)
# Run as the player
# Routes to the correct per-class info tellraw function

$scoreboard players set #cls_info ec.temp $(class_id)
execute if score #cls_info ec.temp matches 1 run function evercraft:codex/hub/classes/info/rogue
execute if score #cls_info ec.temp matches 2 run function evercraft:codex/hub/classes/info/berserker
execute if score #cls_info ec.temp matches 3 run function evercraft:codex/hub/classes/info/dancer
execute if score #cls_info ec.temp matches 4 run function evercraft:codex/hub/classes/info/striker
execute if score #cls_info ec.temp matches 5 run function evercraft:codex/hub/classes/info/sentinel
execute if score #cls_info ec.temp matches 6 run function evercraft:codex/hub/classes/info/healer
execute if score #cls_info ec.temp matches 7 run function evercraft:codex/hub/classes/info/beastlord
execute if score #cls_info ec.temp matches 8 run function evercraft:codex/hub/classes/info/javelin
execute if score #cls_info ec.temp matches 9 run function evercraft:codex/hub/classes/info/hoplite
execute if score #cls_info ec.temp matches 10 run function evercraft:codex/hub/classes/info/archer
execute if score #cls_info ec.temp matches 11 run function evercraft:codex/hub/classes/info/hunter
execute if score #cls_info ec.temp matches 12 run function evercraft:codex/hub/classes/info/tank
execute if score #cls_info ec.temp matches 13 run function evercraft:codex/hub/classes/info/knight

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
