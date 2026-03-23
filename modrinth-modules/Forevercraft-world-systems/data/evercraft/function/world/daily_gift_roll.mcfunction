# Allowance of Dreams — Daily Forever Coin grant scaled by Dream Rate
# Run as player
# Base: 5 coins. +1 per 2 DR levels. Cap: 30 coins/day.
# DR 0 = 5, DR 10 = 10, DR 20 = 15, DR 30 = 20, DR 40 = 25, DR 50 = 30

# Get player's Dream Rate (luck attribute, whole number)
execute store result score #ad_dr ec.temp run attribute @s minecraft:luck get

# Calculate bonus: DR / 2 (integer division)
scoreboard players operation #ad_dr ec.temp /= #2 ec.const

# Total = base 5 + bonus
scoreboard players set #coin_amount ec.temp 5
scoreboard players operation #coin_amount ec.temp += #ad_dr ec.temp

# Cap at 30
execute if score #coin_amount ec.temp matches 31.. run scoreboard players set #coin_amount ec.temp 30

# Header announcement (before grant notification)
tellraw @s ""
tellraw @s [{text:"  "},{"text":"✦ Allowance of Dreams ✦","color":"#E0B0FF","bold":true}]

# Grant coins (prints its own "+X Forever Coin (Total: Y)" line + sound)
function evercraft:gacha/coin/grant

# Details
tellraw @s [{text:"  "},{"text":"Daily allowance: ","color":"gray"},{"score":{"name":"#coin_amount","objective":"ec.temp"},"color":"gold","bold":true},{"text":" coins","color":"gray"}]
execute if score #ad_dr ec.temp matches 1.. run tellraw @s [{text:"  "},{"text":"(+","color":"dark_gray"},{"score":{"name":"#ad_dr","objective":"ec.temp"},"color":"#E0B0FF"},{"text":" bonus from Dream Rate)","color":"dark_gray"}]
tellraw @s ""

# Extra dreamy chime on top of grant's sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.6 1.5
