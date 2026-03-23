# Guild Donation — Patron Mobs (Activity 12)
# Items: leather, rabbit_hide, feather (1pt) | rabbit_foot, turtle_scute (5pt) | heart_of_the_sea, conduit (20pt)

# === Tier 3: 20pt ===

# heart_of_the_sea (20pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:heart_of_the_sea 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:heart_of_the_sea
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 20
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# conduit (20pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:conduit 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:conduit
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 20
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 5pt ===

# rabbit_foot (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:rabbit_foot 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:rabbit_foot
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# turtle_scute (5pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:turtle_scute 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:turtle_scute
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #5 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# leather (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:leather 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:leather
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# rabbit_hide (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:rabbit_hide 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:rabbit_hide
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# feather (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:feather 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:feather
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold creature materials to donate! (leather, feathers, rabbit feet, etc.)",color:"yellow"}]
