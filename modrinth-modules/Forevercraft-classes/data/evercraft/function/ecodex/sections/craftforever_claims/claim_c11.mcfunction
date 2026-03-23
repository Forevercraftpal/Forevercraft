# Claim Next Stage — c11: Biome Node Hunter (bitfield)
# Run as: player, at player

execute unless entity @s[tag=Adv.InMenu] run return 0

# Compute bit count from bitfield
scoreboard players operation #ms_bitfield ec.temp = @s ec.cf_nodes_found
function evercraft:milestones/craftforever/count_bits_15

# Try each stage (thresholds: 3/7/10/13/15)
execute if score #ms_bit_count ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/craftforever/c11_1=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c11_1",tier:"uncommon",coins:5}
execute if score #ms_bit_count ec.temp matches 7.. unless entity @s[advancements={evercraft:claim/craftforever/c11_2=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c11_2",tier:"rare",coins:10}
execute if score #ms_bit_count ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/craftforever/c11_3=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c11_3",tier:"ornate",coins:20}
execute if score #ms_bit_count ec.temp matches 13.. unless entity @s[advancements={evercraft:claim/craftforever/c11_4=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c11_4",tier:"exquisite",coins:35}
execute if score #ms_bit_count ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/craftforever/c11_5=true}] run return run function evercraft:claim/claim_reward {system:"craftforever",id:"c11_5",tier:"mythical",coins:50}
