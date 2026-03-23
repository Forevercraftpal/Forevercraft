# Bulk claim all unclaimed affinity stages for one class (macro)
# Args: {cls:"rg"}
# Increments @s ec.claim_cnt for each claimed stage
$execute store result score #aff_stage ec.temp run scoreboard players get @s ec.affs_$(cls)
execute if score #aff_stage ec.temp matches 0 run return 0

$execute if score #aff_stage ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_1=true}] run function evercraft:claim/bulk_claim_stage {system:"affinity",id:"$(cls)_1",tier:"common",coins:5}
$execute if score #aff_stage ec.temp matches 2.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_2=true}] run function evercraft:claim/bulk_claim_stage {system:"affinity",id:"$(cls)_2",tier:"uncommon",coins:10}
$execute if score #aff_stage ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_3=true}] run function evercraft:claim/bulk_claim_stage {system:"affinity",id:"$(cls)_3",tier:"rare",coins:15}
$execute if score #aff_stage ec.temp matches 4.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_4=true}] run function evercraft:claim/bulk_claim_stage {system:"affinity",id:"$(cls)_4",tier:"ornate",coins:25}
$execute if score #aff_stage ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_5=true}] run function evercraft:claim/bulk_claim_stage {system:"affinity",id:"$(cls)_5",tier:"exquisite",coins:35}
$execute if score #aff_stage ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_6=true}] run function evercraft:claim/bulk_claim_stage {system:"affinity",id:"$(cls)_6",tier:"mythical",coins:50}
$execute if score #aff_stage ec.temp matches 7 unless entity @s[advancements={evercraft:claim/affinity/$(cls)_7=true}] run function evercraft:claim/bulk_claim_stage {system:"affinity",id:"$(cls)_7",tier:"mythical",coins:75}
