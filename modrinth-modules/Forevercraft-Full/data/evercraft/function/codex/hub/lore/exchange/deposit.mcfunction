# Lore Exchange — Deposit held lore piece
# Run as: player with exchange GUI open
# Validates mainhand for physical lore piece, determines rarity, consumes it

# Already full?
execute if score @s lx.count >= @s lx.required if score @s lx.required matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Slots full! Click [Exchange!] to convert.",color:"yellow"}]

# Check if holding a physical lore piece (not a book)
execute unless items entity @s weapon.mainhand *[custom_data~{lore_piece:true}] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Hold a lore piece in your main hand first!",color:"red"}]
execute if items entity @s weapon.mainhand written_book run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Lore books cannot be exchanged — only physical pieces!",color:"red"}]

# Get lore_set and lore_uid from held item
execute store result storage evercraft:lore_exchange temp.set_id int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".lore_set
execute store result storage evercraft:lore_exchange temp.uid int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".lore_uid

# Look up rarity from set metadata (macro)
function evercraft:codex/hub/lore/exchange/get_rarity with storage evercraft:lore_exchange temp

# If rarity couldn't be determined, reject
execute if score @s lx.temp matches 0 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This piece has no rarity data and can't be exchanged.",color:"red"}]

# First deposit — set the tier and calculate required/reward
execute if score @s lx.count matches 0 run scoreboard players operation @s lx.tier = @s lx.temp
execute if score @s lx.count matches 0 run function evercraft:codex/hub/lore/exchange/calc_rate

# Subsequent deposits — verify tier matches
execute if score @s lx.count matches 1.. unless score @s lx.temp = @s lx.tier run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Rarity mismatch! All pieces must be the same rarity.",color:"red"}]

# === CONSUME THE LORE PIECE (by specific UID to avoid clearing wrong piece) ===
function evercraft:codex/hub/lore/exchange/consume with storage evercraft:lore_exchange temp

# Increment deposit count
scoreboard players add @s lx.count 1

# Feedback
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.2
particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 0.5 15

# Refresh GUI
function evercraft:codex/hub/lore/exchange/refresh
