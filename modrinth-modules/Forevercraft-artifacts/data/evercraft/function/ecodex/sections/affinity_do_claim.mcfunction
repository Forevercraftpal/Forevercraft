# Ecodex — Claim Next Unclaimed Affinity Stage (macro)
# Args: {cls, t1-t7, c1-c7}
# Run as: player, at player

execute unless entity @s[tag=Adv.InMenu] run return 0
$execute store result score #aff_stage ec.temp run scoreboard players get @s ec.affs_$(cls)

# Try each stage — first unclaimed + reached wins
$execute if score #aff_stage ec.temp matches 1.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_1=true}] run return run function evercraft:claim/claim_reward {system:"affinity",id:"$(cls)_1",tier:"$(t1)",coins:$(c1)}
$execute if score #aff_stage ec.temp matches 2.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_2=true}] run return run function evercraft:claim/claim_reward {system:"affinity",id:"$(cls)_2",tier:"$(t2)",coins:$(c2)}
$execute if score #aff_stage ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_3=true}] run return run function evercraft:claim/claim_reward {system:"affinity",id:"$(cls)_3",tier:"$(t3)",coins:$(c3)}
$execute if score #aff_stage ec.temp matches 4.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_4=true}] run return run function evercraft:claim/claim_reward {system:"affinity",id:"$(cls)_4",tier:"$(t4)",coins:$(c4)}
$execute if score #aff_stage ec.temp matches 5.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_5=true}] run return run function evercraft:claim/claim_reward {system:"affinity",id:"$(cls)_5",tier:"$(t5)",coins:$(c5)}
$execute if score #aff_stage ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/affinity/$(cls)_6=true}] run return run function evercraft:claim/claim_reward {system:"affinity",id:"$(cls)_6",tier:"$(t6)",coins:$(c6)}
$execute if score #aff_stage ec.temp matches 7 unless entity @s[advancements={evercraft:claim/affinity/$(cls)_7=true}] run return run function evercraft:claim/claim_reward {system:"affinity",id:"$(cls)_7",tier:"$(t7)",coins:$(c7)}
