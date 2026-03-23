# Give Wanderer's Anecdote and mark as received
loot give @s loot evercraft:books/wanderers_anecdote
scoreboard players set @s ec.anec_wanderer 1
tellraw @s [{text:"You found a travel-worn journal... ",color:"gray",italic:true},{text:"Wanderer's Anecdote",color:"yellow"}]
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.8
