# CF Crafting Classes — Show Class Info (Macro)
# Args: {class:"stonestrike"|"lumberfell"|"growseer"|"terrawarp"|"sirencall"|"lamentor"}
# Displays detailed info in chat

# Clear interaction
data remove entity @s interaction

$execute if entity @p[tag=CF.InCodex,distance=..5] as @p[tag=CF.InCodex,distance=..5] run function evercraft:craftforever/codex/hub/crafting_classes/info_$(class)

playsound minecraft:ui.button.click master @p[tag=CF.InCodex,distance=..5] ~ ~ ~ 0.5 1.2
