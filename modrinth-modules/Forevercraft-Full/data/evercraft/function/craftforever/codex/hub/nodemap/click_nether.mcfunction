# Node Map — Nether detail (click handler)
# Runs as interaction entity

data remove entity @s interaction

execute store result score #cf_bits ec.temp run scoreboard players get @p[tag=CF.InCodex,distance=..5] ec.cf_nodes_found

tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\n"},{"text":"\u2550\u2550\u2550 ","color":"#EF4444"},{"text":"\u2668 Nether Nodes","color":"#EF4444","bold":true},{"text":" \u2550\u2550\u2550","color":"#EF4444"},{"text":"\n"},{"text":"2 nodes forged in hellfire, deep within the Nether.","color":"gray","italic":true},{"text":"\n"},{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"dark_gray"}]

# Crimson (bit 5)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 32
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#EF4444"},{"text":"Blazite Ore","color":"#EF4444","bold":true},{"text":" \u2014 Crimson Forest","color":"gray"},{"text":"\n     ","color":"gray"},{"text":"Yields Blazite Crystal. ","color":"white"},{"text":"Ornate tier, Rank 30+","color":"#AB47BC"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Crimson Forest","color":"dark_gray"},{"text":"\n     ","color":"dark_gray"},{"text":"Forged in crimson flame...","color":"dark_gray","italic":true},{"text":" (Rank 30)","color":"#AB47BC"}]

# Warped (bit 6)
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 64
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
execute if score #cf_b ec.temp matches 1 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u2713 ","color":"#2DD4BF"},{"text":"Warpstone Seam","color":"#2DD4BF","bold":true},{"text":" \u2014 Warped Forest","color":"gray"},{"text":"\n     ","color":"gray"},{"text":"Yields Warpstone Dust. ","color":"white"},{"text":"Ornate tier, Rank 30+","color":"#AB47BC"}]
execute if score #cf_b ec.temp matches 0 run tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"  \u25cb ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","italic":true},{"text":"\u2014 Warped Forest","color":"dark_gray"},{"text":"\n     ","color":"dark_gray"},{"text":"Alien stone hums softly...","color":"dark_gray","italic":true},{"text":" (Rank 30)","color":"#AB47BC"}]

tellraw @p[tag=CF.InCodex,distance=..5] [{"text":"\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"dark_gray"},{"text":"\n"},{"text":"Both Nether nodes require Artisan Rank 30.","color":"gray","italic":true}]

playsound minecraft:ui.button.click master @p[tag=CF.InCodex,distance=..5] ~ ~ ~ 0.5 1.2
execute as @p[tag=CF.InCodex,distance=..5] run scoreboard players set @s ec.cf_codex_cd 3
