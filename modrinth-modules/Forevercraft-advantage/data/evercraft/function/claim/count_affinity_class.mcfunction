# Count unclaimed affinity stages for one class (macro)
# Args: {cls:"rg"}
# Adds to @s ec.claim_aff for each unclaimed stage
$execute store result score #aff_stage ec.temp run scoreboard players get @s ec.affs_$(cls)
execute if score #aff_stage ec.temp matches 0 run return 0

$execute if score #aff_stage ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_1=true}] run scoreboard players add @s ec.claim_aff 1
$execute if score #aff_stage ec.temp matches 2.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_2=true}] run scoreboard players add @s ec.claim_aff 1
$execute if score #aff_stage ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_3=true}] run scoreboard players add @s ec.claim_aff 1
$execute if score #aff_stage ec.temp matches 4.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_4=true}] run scoreboard players add @s ec.claim_aff 1
$execute if score #aff_stage ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_5=true}] run scoreboard players add @s ec.claim_aff 1
$execute if score #aff_stage ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_6=true}] run scoreboard players add @s ec.claim_aff 1
$execute if score #aff_stage ec.temp matches 7 unless entity @s[advancements={evercraft:claim/affinity/$(cls)_7=true}] run scoreboard players add @s ec.claim_aff 1
