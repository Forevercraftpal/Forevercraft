# Ecodex — Claim Next Unclaimed Stage (macro)
# Args: {system, id, score, th1-th5, t1-t5, c1-c5}
# Run as: player, at player
# Claims the first unclaimed stage whose threshold is met

execute unless entity @s[tag=Adv.InMenu] run return 0
$execute store result score #ms_val ec.temp run scoreboard players get @s $(score)

# Try each stage in order — first unclaimed + threshold-met wins
$execute if score #ms_val ec.temp matches $(th1).. unless entity @s[advancements={evercraft:claim/$(system)/$(id)_1=true}] run return run function evercraft:claim/claim_reward {system:"$(system)",id:"$(id)_1",tier:"$(t1)",coins:$(c1)}
$execute if score #ms_val ec.temp matches $(th2).. unless entity @s[advancements={evercraft:claim/$(system)/$(id)_2=true}] run return run function evercraft:claim/claim_reward {system:"$(system)",id:"$(id)_2",tier:"$(t2)",coins:$(c2)}
$execute if score #ms_val ec.temp matches $(th3).. unless entity @s[advancements={evercraft:claim/$(system)/$(id)_3=true}] run return run function evercraft:claim/claim_reward {system:"$(system)",id:"$(id)_3",tier:"$(t3)",coins:$(c3)}
$execute if score #ms_val ec.temp matches $(th4).. unless entity @s[advancements={evercraft:claim/$(system)/$(id)_4=true}] run return run function evercraft:claim/claim_reward {system:"$(system)",id:"$(id)_4",tier:"$(t4)",coins:$(c4)}
$execute if score #ms_val ec.temp matches $(th5).. unless entity @s[advancements={evercraft:claim/$(system)/$(id)_5=true}] run return run function evercraft:claim/claim_reward {system:"$(system)",id:"$(id)_5",tier:"$(t5)",coins:$(c5)}
