# Pantry — Give pantry item to player
loot give @s loot evercraft:pantry/pantry
scoreboard players set @s ec.has_pantry 1
tellraw @s [{text:"\u2726 ",color:"gold"},{text:"You received a ",color:"green"},{text:"Pantry",color:"gold",bold:true},{text:"! Store cooking items inside.",color:"green"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.4
