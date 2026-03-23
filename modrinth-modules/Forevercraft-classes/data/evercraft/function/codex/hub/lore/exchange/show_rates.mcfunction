# Lore Exchange — Show Exchange Rates in Chat
# Run as: the player

tellraw @s [{text:"",color:"dark_gray"},{text:"--- Lore Exchange Rates ---",color:"yellow",bold:true}]
tellraw @s [{text:" 3",color:"white",bold:true},{text:" Common",color:"gray"},{text:" \u279c ",color:"dark_gray"},{text:"1 Lore Shard",color:"aqua"}]
tellraw @s [{text:" 2",color:"green",bold:true},{text:" Uncommon",color:"gray"},{text:" \u279c ",color:"dark_gray"},{text:"1 Lore Shard",color:"aqua"}]
tellraw @s [{text:" 1",color:"aqua",bold:true},{text:" Rare",color:"gray"},{text:" \u279c ",color:"dark_gray"},{text:"1 Lore Shard",color:"aqua"}]
tellraw @s [{text:" 1",color:"dark_purple",bold:true},{text:" Ornate",color:"gray"},{text:" \u279c ",color:"dark_gray"},{text:"2 Lore Shards",color:"aqua"}]
tellraw @s [{text:" 1",color:"light_purple",bold:true},{text:" Exquisite",color:"gray"},{text:" \u279c ",color:"dark_gray"},{text:"3 Lore Shards",color:"aqua"}]
tellraw @s [{text:" 1",color:"gold",bold:true},{text:" Mythical",color:"gray"},{text:" \u279c ",color:"dark_gray"},{text:"4 Lore Shards",color:"aqua"}]
tellraw @s [{text:"",color:"dark_gray"},{text:"---------------------------",color:"dark_gray"}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.2
