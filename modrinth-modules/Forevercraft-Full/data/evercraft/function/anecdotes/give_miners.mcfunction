# Give Miner's Anecdote and mark as received
loot give @s loot evercraft:books/miners_anecdote
scoreboard players set @s ec.anec_miner 1
tellraw @s [{text:"You found a dusty tome... ",color:"gray",italic:true},{text:"Miner's Anecdote",color:"gray"}]
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.8
