# Artifact Transmutation — Deposit awakening stone (scales with tier)
# Run as: player, at player position
# Same tier = ½ deposit, each tier above = +½ more (uncommon into common = 1, ornate = 2, mythical = 3)

# Must have a tier set first (deposit at least one real artifact)
execute if score @s tx.tier matches ..0 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Deposit an artifact first to set the tier.",color:"red"}]

# Determine stone tier (stones use stone_tier or tier field)
scoreboard players set #tx_stone ec.var 0
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,stone_tier:"common"}] run scoreboard players set #tx_stone ec.var 1
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,tier:"common"}] run scoreboard players set #tx_stone ec.var 1
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,stone_tier:"uncommon"}] run scoreboard players set #tx_stone ec.var 2
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,tier:"uncommon"}] run scoreboard players set #tx_stone ec.var 2
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,stone_tier:"rare"}] run scoreboard players set #tx_stone ec.var 3
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,tier:"rare"}] run scoreboard players set #tx_stone ec.var 3
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,stone_tier:"ornate"}] run scoreboard players set #tx_stone ec.var 4
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,tier:"ornate"}] run scoreboard players set #tx_stone ec.var 4
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,stone_tier:"exquisite"}] run scoreboard players set #tx_stone ec.var 5
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,tier:"exquisite"}] run scoreboard players set #tx_stone ec.var 5
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,stone_tier:"mythical"}] run scoreboard players set #tx_stone ec.var 6
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true,tier:"mythical"}] run scoreboard players set #tx_stone ec.var 6

# Reject if tier couldn't be determined
execute if score #tx_stone ec.var matches 0 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This stone has no tier data.",color:"red"}]

# Reject if stone tier is lower than transmute tier
execute if score #tx_stone ec.var < @s tx.tier run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Stone tier is too low! Need same tier or higher.",color:"red"}]

# Calculate halves to add: 1 + (stone_tier - transmute_tier)
scoreboard players operation #tx_halves ec.var = #tx_stone ec.var
scoreboard players operation #tx_halves ec.var -= @s tx.tier
scoreboard players add #tx_halves ec.var 1

# Consume the awakening stone (target mainhand)
item replace entity @s weapon.mainhand with minecraft:air

# Add halves
scoreboard players operation @s tx.half += #tx_halves ec.var

# Convert halves to full counts: count += half / 2, half %= 2
scoreboard players operation #tx_full ec.var = @s tx.half
scoreboard players operation #tx_full ec.var /= #2 adv.temp
scoreboard players operation @s tx.count += #tx_full ec.var
scoreboard players operation @s tx.half %= #2 adv.temp

# Cap at required
execute if score @s tx.count > @s tx.required run scoreboard players operation @s tx.count = @s tx.required
execute if score @s tx.count >= @s tx.required run scoreboard players set @s tx.half 0

# Feedback
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.2
particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 0.3 10

# Show deposit value
execute if score #tx_halves ec.var matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Awakening stone deposited ",color:"light_purple"},{text:"(counts as ½)",color:"gray"}]
execute if score #tx_halves ec.var matches 2 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Awakening stone deposited ",color:"light_purple"},{text:"(counts as 1)",color:"gray"}]
execute if score #tx_halves ec.var matches 3 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Awakening stone deposited ",color:"light_purple"},{text:"(counts as 1½)",color:"gray"}]
execute if score #tx_halves ec.var matches 4 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Awakening stone deposited ",color:"light_purple"},{text:"(counts as 2)",color:"gray"}]
execute if score #tx_halves ec.var matches 5 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Awakening stone deposited ",color:"light_purple"},{text:"(counts as 2½)",color:"gray"}]
execute if score #tx_halves ec.var matches 6 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Awakening stone deposited ",color:"light_purple"},{text:"(counts as 3)",color:"gray"}]

# Refresh GUI
function evercraft:transmute/gui/refresh
