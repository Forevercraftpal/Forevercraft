# Give Beastkeeper's Anecdote and mark as received
loot give @s loot evercraft:books/beastkeepers_anecdote
scoreboard players set @s ec.anec_beast 1
tellraw @s [{text:"You found a shepherd's notebook... ",color:"gray",italic:true},{text:"Beastkeeper's Anecdote",color:"green"}]
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.8
