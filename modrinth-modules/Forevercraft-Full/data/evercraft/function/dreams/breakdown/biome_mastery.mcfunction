# Dream Rate Breakdown — Biome Mastery
# Shows biome mastery DR bonus based on mastery level

scoreboard players set #dr_any ec.temp 0

# --- Biome Mastery (use score to determine exact display value) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:biome_mastery_dr 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_green"},{text:"Biome Mastery:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 if score @s ec.bm_level matches 2..3 run tellraw @s [{text:"    Mastery Bonus",color:"green"},{text:"            +0.1",color:"gold"}]
execute if score #has ec.temp matches 1 if score @s ec.bm_level matches 4 run tellraw @s [{text:"    Mastery Bonus",color:"green"},{text:"            +0.35",color:"gold"}]
execute if score #has ec.temp matches 1 if score @s ec.bm_level matches 5.. run tellraw @s [{text:"    Mastery Bonus",color:"green"},{text:"            +0.5",color:"gold"}]
