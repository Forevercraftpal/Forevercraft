# Downgrade Exquisite → cascade through Ornate gate (Dream Rate < 15)
tellraw @s [{text:"✦ ",color:"dark_purple"},{text:"An exquisite crate shimmered but faded... your dreams aren't strong enough yet.",color:"gray",italic:true}]
tellraw @s [{text:"  Requires ",color:"gray"},{text:"Dream Rate 15",color:"gold",bold:true},{text:" to receive Exquisite crates. Use ",color:"gray"},{text:"/trigger ec.dreams",color:"aqua"},{text:" to check.",color:"gray"}]
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 0.5

# Cascade: check if player qualifies for Ornate (Dream Rate >= 5), otherwise Rare
execute if score @s ec.temp matches 50.. run function evercraft:harvest/ref/advancement/ornate/grant
execute unless score @s ec.temp matches 50.. run function evercraft:harvest/ref/advancement/ornate/downgrade
