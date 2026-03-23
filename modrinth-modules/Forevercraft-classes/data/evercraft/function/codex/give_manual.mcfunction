# Manual command to give a player The Forevercraft Codex
# Usage: /function evercraft:codex/give_manual

loot give @s loot evercraft:items/artifact_codex_item

tellraw @s [{text:"[Forevercraft] ",color:"gold",bold:true},{text:"You received The Forevercraft Codex!",color:"yellow"}]
tellraw @s [{text:"  • ",color:"gray"},{text:"Right-click to view your collection",color:"white"}]
tellraw @s [{text:"  • ",color:"gray"},{text:"Use ",color:"white"},{text:"/trigger ec.codex",color:"aqua"},{text:" to open anytime",color:"white"}]

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
