# Give Scholar's Anecdote and mark as received
loot give @s loot evercraft:books/scholars_anecdote
scoreboard players set @s ec.anec_scholar 1
tellraw @s [{text:"You found an ancient manuscript... ",color:"gray",italic:true},{text:"Scholar's Anecdote",color:"dark_purple"}]
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.8
