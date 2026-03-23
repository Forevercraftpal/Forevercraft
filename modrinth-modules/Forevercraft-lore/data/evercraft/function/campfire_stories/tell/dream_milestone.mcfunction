# Campfire Story — Dream Rate Milestone
# Called with {player:"Name", milestone:"30", day:N}
$tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"The fire crackles and a memory stirs...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"The night ","color":"#E8C99B"},{text:"$(player)","color":"white","bold":true},{text:"'s Dream Rate touched ","color":"#E8C99B"},{text:"$(milestone)","color":"light_purple","bold":true},{text:"... the whole world trembled.\"","color":"#E8C99B"},{text:"\n"}]
execute at @s run playsound minecraft:block.campfire.crackle master @a[distance=..8] ~ ~ ~ 0.4 1.2
