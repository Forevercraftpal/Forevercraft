# Show player's current reputation and rank

# Determine rank title based on rep thresholds
execute if score @s ec.village_rep matches ..99 run tellraw @s ["",{text:"REPUTATION\n",color:"gold",bold:true},{text:"Rank: ",color:"gray"},{text:"Stranger\n",color:"dark_gray"},{text:"Reputation: ",color:"gray"},{score:{name:"@s",objective:"ec.village_rep"},color:"white"},{text:"\n\nNext rank: ",color:"gray"},{text:"Acquaintance",color:"yellow"},{text:" (100)",color:"dark_gray"}]

execute if score @s ec.village_rep matches 100..249 run tellraw @s ["",{text:"REPUTATION\n",color:"gold",bold:true},{text:"Rank: ",color:"gray"},{text:"Acquaintance\n",color:"yellow"},{text:"Reputation: ",color:"gray"},{score:{name:"@s",objective:"ec.village_rep"},color:"white"},{text:"\n\nNext rank: ",color:"gray"},{text:"Friend",color:"green"},{text:" (250)",color:"dark_gray"}]

execute if score @s ec.village_rep matches 250..499 run tellraw @s ["",{text:"REPUTATION\n",color:"gold",bold:true},{text:"Rank: ",color:"gray"},{text:"Friend\n",color:"green"},{text:"Reputation: ",color:"gray"},{score:{name:"@s",objective:"ec.village_rep"},color:"white"},{text:"\n\nNext rank: ",color:"gray"},{text:"Ally",color:"aqua"},{text:" (500)",color:"dark_gray"}]

execute if score @s ec.village_rep matches 500..999 run tellraw @s ["",{text:"REPUTATION\n",color:"gold",bold:true},{text:"Rank: ",color:"gray"},{text:"Ally\n",color:"aqua"},{text:"Reputation: ",color:"gray"},{score:{name:"@s",objective:"ec.village_rep"},color:"white"},{text:"\n\nNext rank: ",color:"gray"},{text:"Hero",color:"dark_purple"},{text:" (1000)",color:"dark_gray"}]

execute if score @s ec.village_rep matches 1000..2499 run tellraw @s ["",{text:"REPUTATION\n",color:"gold",bold:true},{text:"Rank: ",color:"gray"},{text:"Hero\n",color:"dark_purple"},{text:"Reputation: ",color:"gray"},{score:{name:"@s",objective:"ec.village_rep"},color:"white"},{text:"\n\nNext rank: ",color:"gray"},{text:"Legend",color:"gold"},{text:" (2500)",color:"dark_gray"}]

execute if score @s ec.village_rep matches 2500.. run tellraw @s ["",{text:"REPUTATION\n",color:"gold",bold:true},{text:"Rank: ",color:"gray"},{text:"Legend\n",color:"gold",bold:true},{text:"Reputation: ",color:"gray"},{score:{name:"@s",objective:"ec.village_rep"},color:"white"},{text:"\n\n"},{text:"Your name echoes through the ages!",color:"gold",italic:true}]

playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1
return 1
