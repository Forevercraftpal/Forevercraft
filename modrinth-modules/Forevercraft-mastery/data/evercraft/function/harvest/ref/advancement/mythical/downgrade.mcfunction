# Downgrade Mythical → cascade through Exquisite gate (Dream Rate < 25)
tellraw @s [{text:"★ ",color:"gold"},{text:"A mythical crate flickered into existence but vanished... your dreams aren't powerful enough.",color:"gray",italic:true}]
tellraw @s [{text:"  Requires ",color:"gray"},{text:"Dream Rate 25",color:"gold",bold:true},{text:" to receive Mythical crates. Use ",color:"gray"},{text:"/trigger ec.dreams",color:"aqua"},{text:" to check.",color:"gray"}]
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 0.3

# Cascade: check if player qualifies for Exquisite (Dream Rate >= 15), otherwise Ornate
execute if score @s ec.temp matches 150.. run function evercraft:harvest/ref/advancement/exquisite/grant
execute unless score @s ec.temp matches 150.. run function evercraft:harvest/ref/advancement/exquisite/downgrade
