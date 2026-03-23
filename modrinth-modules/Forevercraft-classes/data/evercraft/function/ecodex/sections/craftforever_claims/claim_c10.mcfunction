# Claim Next Stage — c10: Material Collector (bitfield)
# Run as: player, at player

execute unless entity @s[tag=Adv.InMenu] run return 0

# Compute bit count from bitfield
scoreboard players operation #ms_bitfield ec.temp = @s ec.cf_materials
function evercraft:milestones/craftforever/count_bits_15

# Try each stage (thresholds: 3/6/9/12/15)
execute if score #ms_bit_count ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/craftforever/c10_1=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c10_1",tier:"uncommon",coins:5}
execute if score #ms_bit_count ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/craftforever/c10_2=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c10_2",tier:"rare",coins:10}
execute if score #ms_bit_count ec.temp matches 9.. unless entity @s[advancements={evercraft:claim/craftforever/c10_3=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c10_3",tier:"ornate",coins:20}
execute if score #ms_bit_count ec.temp matches 12.. unless entity @s[advancements={evercraft:claim/craftforever/c10_4=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c10_4",tier:"exquisite",coins:35}
execute if score #ms_bit_count ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/craftforever/c10_5=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c10_5",tier:"mythical",coins:50}
