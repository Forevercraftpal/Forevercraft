# CF Crafting Classes — Show Class Info via Attack (Left-Click)
# Args: {class:"stonestrike"|"lumberfell"|"growseer"|"terrawarp"|"sirencall"|"lamentor"}

# Clear attack data
data remove entity @s attack

$execute if entity @p[tag=CF.InCodex,distance=..5] as @p[tag=CF.InCodex,distance=..5] run function evercraft:craftforever/codex/hub/crafting_classes/info_$(class)

playsound minecraft:ui.button.click master @p[tag=CF.InCodex,distance=..5] ~ ~ ~ 0.5 1.2
