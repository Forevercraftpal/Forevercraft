# === CHECK ONE CRAFTFOREVER MILESTONE ===
# Args: {id:"c1", score:"ach.meals_cooked", t1:25, t2:75, t3:200, t4:400, t5:750}
# Increments @s ec.claim_cft for each unclaimed stage reached

$execute store result score #ms_val ec.temp run scoreboard players get @s $(score)

# Stage 1
$execute if score #ms_val ec.temp matches $(t1).. unless entity @s[advancements={evercraft:claim/craftforever/$(id)_1=true}] run scoreboard players add @s ec.claim_cft 1
# Stage 2
$execute if score #ms_val ec.temp matches $(t2).. unless entity @s[advancements={evercraft:claim/craftforever/$(id)_2=true}] run scoreboard players add @s ec.claim_cft 1
# Stage 3
$execute if score #ms_val ec.temp matches $(t3).. unless entity @s[advancements={evercraft:claim/craftforever/$(id)_3=true}] run scoreboard players add @s ec.claim_cft 1
# Stage 4
$execute if score #ms_val ec.temp matches $(t4).. unless entity @s[advancements={evercraft:claim/craftforever/$(id)_4=true}] run scoreboard players add @s ec.claim_cft 1
# Stage 5
$execute if score #ms_val ec.temp matches $(t5).. unless entity @s[advancements={evercraft:claim/craftforever/$(id)_5=true}] run scoreboard players add @s ec.claim_cft 1
