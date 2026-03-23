# === CHECK ONE BIOME MASTERY ===
# Args: {id:"b0", score:"ec.bm0", t1:1800, t2:7200, t3:21600, t4:54000, t5:108000}
# Increments @s ec.claim_biome for each unclaimed stage reached

$execute store result score #ms_val ec.temp run scoreboard players get @s $(score)

# Stage 1
$execute if score #ms_val ec.temp matches $(t1).. unless entity @s[advancements={evercraft:claim/biome/$(id)_1=true}] run scoreboard players add @s ec.claim_biome 1
# Stage 2
$execute if score #ms_val ec.temp matches $(t2).. unless entity @s[advancements={evercraft:claim/biome/$(id)_2=true}] run scoreboard players add @s ec.claim_biome 1
# Stage 3
$execute if score #ms_val ec.temp matches $(t3).. unless entity @s[advancements={evercraft:claim/biome/$(id)_3=true}] run scoreboard players add @s ec.claim_biome 1
# Stage 4
$execute if score #ms_val ec.temp matches $(t4).. unless entity @s[advancements={evercraft:claim/biome/$(id)_4=true}] run scoreboard players add @s ec.claim_biome 1
# Stage 5
$execute if score #ms_val ec.temp matches $(t5).. unless entity @s[advancements={evercraft:claim/biome/$(id)_5=true}] run scoreboard players add @s ec.claim_biome 1
