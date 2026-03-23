# Spirit Tome — Quest 100 Complete! Grand Finale!
# The ultimate celebration for completing all 100 spirit tome quests

# Title sequence
title @s times 20 100 40
title @s subtitle {"text":"All 100 Quests Complete","color":"gold","italic":true}
title @s title [{"text":"SPIRIT TOME","color":"aqua","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"MASTERED","color":"gold","bold":true}]

# Massive particle burst
execute at @s run particle end_rod ~ ~1 ~ 1 1 1 0.15 100
execute at @s run particle totem_of_undying ~ ~1 ~ 0.8 0.8 0.8 0.5 80
execute at @s run particle dragon_breath ~ ~0.5 ~ 0.5 0.1 0.5 0.02 40

# Sound fanfare
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.3 1.5
playsound minecraft:item.trident.thunder master @s ~ ~ ~ 0.5 1.2

# Server announcement
tellraw @a [{"text":""},{"text":"[Forevercraft] ","color":"gold"},{"selector":"@s","color":"aqua","bold":true},{"text":" has completed all ","color":"gray"},{"text":"100 Spirit Tome quests","color":"aqua","bold":true},{"text":"!","color":"gray"}]

# Bonus: grant 100 additional experience levels
experience add @s 100 levels
tellraw @s [{text:"  "},{"text":"+100 bonus levels ","color":"green","bold":true},{"text":"for mastering the Spirit Tome!","color":"green"}]
