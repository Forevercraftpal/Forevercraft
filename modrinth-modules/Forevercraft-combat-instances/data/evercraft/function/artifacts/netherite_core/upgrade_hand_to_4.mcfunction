# Upgrade Ancient Netherite Core to Level 4 (in hand) - MAXIMUM LEVEL

# Play upgrade sounds and effects - extra epic!
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 0.5
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1.2
playsound minecraft:entity.ender_dragon.death player @s ~ ~ ~ 0.5 1.5
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 100
particle end_rod ~ ~1 ~ 1 1 1 0.1 50

# Replace the item in hand with Level 4 version (MAX)
loot replace entity @s weapon.mainhand loot evercraft:artifacts/special/ancient_netherite_core_4

# Title and message
title @s title {text:"MAXIMUM POWER!",color:"gold",bold:true}
title @s subtitle {text:"Ancient Netherite Core",color:"#8c0691",bold:true}

tellraw @s {text:"",color:"gray"}
tellraw @s [{text:"WOW... ",color:"gold",bold:true},{text:"You actually did it!",color:"yellow"}]
tellraw @s [{text:"You finished the ",color:"dark_purple"},{text:"Ancient Netherite Core",color:"#8c0691",bold:true},{text:" and its power begins to seep",color:"dark_purple"}]
tellraw @s [{text:"and meld into your very bones...",color:"dark_purple"}]
tellraw @s {text:"",color:"gray"}
tellraw @s {text:"ALL beacon effects at Level II (except Regen)! You are unstoppable!",color:"yellow"}
