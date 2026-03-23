# Structure First-Find Bonus (macro)
# Called with {name:"Structure Name",color:"tier_color",xp:"amount"}

# Chat notification
$tellraw @s [{text:""},{text:"  🏛 ",color:"$(color)"},{text:"FIRST DISCOVERY: ",color:"$(color)",bold:true},{text:"$(name)",color:"$(color)"},{text:" — +$(xp) XP bonus!",color:"gray"}]

# Grant XP
$experience add @s $(xp) points

# Sounds
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.2
playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 0.6 0.8

# Achievement tracking
scoreboard players add @s ach.structures_found 1
