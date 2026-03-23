# Upgrade Ancient Netherite Core to Level 1 (in hand)

# Play upgrade sounds and effects
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 0.8
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1.2
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 50

# Replace the item in hand with Level 1 version
loot replace entity @s weapon.mainhand loot evercraft:artifacts/special/ancient_netherite_core_1

# Title and message
title @s title {text:"Level 1 Unlocked!",color:"gold"}
title @s subtitle {text:"Ancient Netherite Core",color:"dark_purple",bold:true}

tellraw @s ["",{text:"Your ",color:"gray"},{text:"Ancient Netherite Core",color:"dark_purple",bold:true},{text:" has awakened!",color:"gray"}]
tellraw @s {text:"Effects: Speed I + Haste I - Place in Ender Chest!",color:"yellow"}
