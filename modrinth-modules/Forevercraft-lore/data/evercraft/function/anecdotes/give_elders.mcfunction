# Give Elder's Anecdote and mark as received
loot give @s loot evercraft:books/elders_anecdote
scoreboard players set @s ec.anec_elder 1
tellraw @s [{text:"You found a weathered tome... ",color:"gray",italic:true},{text:"Elder's Anecdote",color:"gold"}]
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.8
