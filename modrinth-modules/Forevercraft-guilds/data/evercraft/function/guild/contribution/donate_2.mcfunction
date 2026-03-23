# Guild Donation — Fishing (Activity 2)
# Items: gold_nugget, nether_brick (1pt) | glowstone_dust, magma_cream (3pt) | blaze_rod, ghast_tear (10pt)

# === Tier 3: 10pt ===

# blaze_rod (10pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:blaze_rod 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:blaze_rod
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #10 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# ghast_tear (10pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:ghast_tear 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:ghast_tear
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #10 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 3pt ===

# glowstone_dust (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:glowstone_dust 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:glowstone_dust
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# magma_cream (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:magma_cream 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:magma_cream
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# gold_nugget (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:gold_nugget 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:gold_nugget
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# nether_brick (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:nether_brick 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:nether_brick
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold fishing catches to donate! (gold nuggets, glowstone, blaze rods, etc.)",color:"yellow"}]
