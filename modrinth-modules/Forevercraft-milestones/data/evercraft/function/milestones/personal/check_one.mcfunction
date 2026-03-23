# === CHECK ONE PERSONAL MILESTONE ===
# Args: {id:"p1", score:"ach.comp_owned", t1:10, t2:25, t3:50, t4:75, t5:96}
# Increments @s ec.claim_prs for each unclaimed stage reached

$execute store result score #ms_val ec.temp run scoreboard players get @s $(score)

# Stage 1
$execute if score #ms_val ec.temp matches $(t1).. unless entity @s[advancements={evercraft:claim/personal/$(id)_1=true}] run scoreboard players add @s ec.claim_prs 1
# Stage 2
$execute if score #ms_val ec.temp matches $(t2).. unless entity @s[advancements={evercraft:claim/personal/$(id)_2=true}] run scoreboard players add @s ec.claim_prs 1
# Stage 3
$execute if score #ms_val ec.temp matches $(t3).. unless entity @s[advancements={evercraft:claim/personal/$(id)_3=true}] run scoreboard players add @s ec.claim_prs 1
# Stage 4
$execute if score #ms_val ec.temp matches $(t4).. unless entity @s[advancements={evercraft:claim/personal/$(id)_4=true}] run scoreboard players add @s ec.claim_prs 1
# Stage 5
$execute if score #ms_val ec.temp matches $(t5).. unless entity @s[advancements={evercraft:claim/personal/$(id)_5=true}] run scoreboard players add @s ec.claim_prs 1
