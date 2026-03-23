# Give Fisherman's Anecdote and mark as received
loot give @s loot evercraft:books/fishermans_anecdote
scoreboard players set @s ec.anec_fisher 1
tellraw @s [{text:"You found a salt-stained journal... ",color:"gray",italic:true},{text:"Fisherman's Anecdote",color:"aqua"}]
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.8
