# Node Map — End detail (click handler)
# Runs as interaction entity

data remove entity @s interaction

execute store result score #cf_bits ec.temp run scoreboard players get @p[tag=CF.InCodex,distance=..5] ec.cf_nodes_found

tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u2550\u2550\u2550 ","color":"#A855F7"},{"text":"\u2604 The End Nodes","color":"#A855F7","bold":true},{"text":" \u2550\u2550\u2550","color":"#A855F7"},{"text":"\n"},{"text":"1 node at the very edge of reality.","color":"gray","italic":true},{"text":"\n"},{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"dark_gray"}]

# End (bit 7)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 128
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#A855F7"},{"text":"Endric Formation","color":"#A855F7","bold":true},{"text":" \u2014 End Islands","color":"gray"},{"text":"\n     ","color":"gray"},{"text":"Yields Endric Shard. ","color":"white"},{"text":"Mythical tier","color":"gold","bold":true},{"text":", Rank 50+","color":"gold"},{"text":"\n     ","color":"gray"},{"text":"The rarest crafting material in existence.","color":"gold","italic":true}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 End Islands","color":"dark_gray"},{"text":"\n     ","color":"dark_gray"},{"text":"Between dimensions it waits, patient as entropy...","color":"dark_gray","italic":true},{"text":"\n     ","color":"dark_gray"},{"text":"Requires Artisan Rank ","color":"dark_gray"},{"text":"50","color":"gold","bold":true},{"text":" to harvest.","color":"dark_gray"}]

tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"dark_gray"},{"text":"\n"},{"text":"Endric Shards are required for Soulbound Core forging.","color":"gray","italic":true}]

playsound minecraft:ui.button.click master @p[tag=CF.InCodex,distance=..5] ~ ~ ~ 0.5 1.2
execute as @p[tag=CF.InCodex,distance=..5] run scoreboard players set @s ec.cf_codex_cd 3
