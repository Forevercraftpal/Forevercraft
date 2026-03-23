# Macro: Announce biome mastery level-up with biome name
tellraw @s [{text:""}]
$tellraw @s [{text:"[Biome Mastery] ",color:"#4CAF50"},{text:"$(biome_name)",color:"green",bold:true},{text:" — Level Up!",color:"gold"}]
