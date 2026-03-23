# Give the player The Forevercraft Codex item
# Only called when they don't have one

loot give @s loot evercraft:items/artifact_codex_item

tellraw @s ""
tellraw @s [{text:"  You received ",color:"yellow"},{text:"The Forevercraft Codex",color:"gold",bold:true},{text:"!",color:"yellow"}]
tellraw @s [{text:"  Use it to track your collection.",color:"gray",italic:true}]
tellraw @s ""
