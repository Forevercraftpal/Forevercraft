# Guild Donation — Prospecting (Activity 5)
# Items: raw_copper, raw_iron, coal (1pt) | raw_gold, lapis_lazuli, amethyst_shard (5pt) | diamond, emerald (25pt)

# === Tier 3: 25pt ===

# diamond (25pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:diamond 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:diamond
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #25 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# emerald (25pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:emerald 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:emerald
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #25 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 5pt ===

# raw_gold (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:raw_gold 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:raw_gold
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# lapis_lazuli (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:lapis_lazuli 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:lapis_lazuli
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# amethyst_shard (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:amethyst_shard 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:amethyst_shard
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# raw_copper (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:raw_copper 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:raw_copper
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# raw_iron (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:raw_iron 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:raw_iron
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# coal (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:coal 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:coal
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold ores to donate! (raw copper, raw gold, diamonds, etc.)",color:"yellow"}]
