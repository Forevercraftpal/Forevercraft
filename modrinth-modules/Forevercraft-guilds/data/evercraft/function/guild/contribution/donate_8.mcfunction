# Guild Donation — Bounties (Activity 8)
# Items: phantom_membrane, slime_ball, blaze_powder (1pt) | ghast_tear, prismarine_shard (5pt) | nether_star, dragon_breath (20pt)

# === Tier 3: 20pt ===

# nether_star (20pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:nether_star 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:nether_star
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 20
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# dragon_breath (20pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:dragon_breath 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:dragon_breath
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 20
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 5pt ===

# ghast_tear (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:ghast_tear 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:ghast_tear
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# prismarine_shard (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:prismarine_shard 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:prismarine_shard
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# phantom_membrane (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:phantom_membrane 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:phantom_membrane
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# slime_ball (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:slime_ball 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:slime_ball
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# blaze_powder (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:blaze_powder 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:blaze_powder
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold bounty trophies to donate! (slime balls, ghast tears, nether stars, etc.)",color:"yellow"}]
