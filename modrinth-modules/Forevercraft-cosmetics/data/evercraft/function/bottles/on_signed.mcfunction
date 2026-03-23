# Message in a Bottle — Handle book signing
# Called via advancement when writable_book is signed → written_book with message_bottle custom_data
# @s = player who signed the book

advancement revoke @s only evercraft:bottles/on_signed

# Verify the written book is in main hand (should be, since signing keeps it there)
execute unless items entity @s weapon.mainhand minecraft:written_book[custom_data~{message_bottle:1b}] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Something went wrong sealing your message.",color:"red"}]

# Build message entry in temp storage
data modify storage evercraft:bottles temp set value {}

# Read page 1 text from the signed book
data modify storage evercraft:bottles temp.text set from entity @s SelectedItem.components."minecraft:written_book_content".pages[0]

# Read author name
data modify storage evercraft:bottles temp.author set from entity @s SelectedItem.components."minecraft:written_book_content".author

# Store current day
execute store result storage evercraft:bottles temp.day int 1 run scoreboard players get #visual_day ec.var

# Detect and store biome
function evercraft:biome/detect
execute store result storage evercraft:bottles temp.biome int 1 run scoreboard players get @s ec.biome_id

# Append to pool
data modify storage evercraft:bottles pool append from storage evercraft:bottles temp

# FIFO: remove oldest if pool > 50
execute store result score #bottle_pool_size ec.temp run data get storage evercraft:bottles pool
execute if score #bottle_pool_size ec.temp matches 51.. run data remove storage evercraft:bottles pool[0]

# Remove the book from player's hand
clear @s minecraft:written_book[custom_data~{message_bottle:1b}] 1

# Confirmation
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your message has been sealed and cast to the sea!",color:"aqua"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2
