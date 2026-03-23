# Campfire Story — Boss Kill
# Called with {player:"Name", boss:"Boss Name", day:N}
$tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"The fire crackles and a memory stirs...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"Remember when ","color":"#E8C99B"},{text:"$(player)","color":"white","bold":true},{text:" faced ","color":"#E8C99B"},{text:"$(boss)","color":"dark_red","bold":true},{text:"? What a fight that was...\"","color":"#E8C99B"},{text:"\n"}]
execute at @s run playsound minecraft:block.campfire.crackle master @a[distance=..8] ~ ~ ~ 0.4 1.2
