# Upgrade Ancient Netherite Core to Level 3 (in hand)

# Play upgrade sounds and effects
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 0.8
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1.2
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 50

# Replace the item in hand with Level 3 version
loot replace entity @s weapon.mainhand loot evercraft:artifacts/special/ancient_netherite_core_3

# Title and message
title @s title {text:"Level 3 Unlocked!",color:"gold"}
title @s subtitle {text:"Ancient Netherite Core",color:"dark_purple",bold:true}

tellraw @s ["",{text:"Your ",color:"gray"},{text:"Ancient Netherite Core",color:"dark_purple",bold:true},{text:" ascends!",color:"gray"}]
tellraw @s {text:"All beacon effects at Level I! Jump Boost and Regen added!",color:"yellow"}
