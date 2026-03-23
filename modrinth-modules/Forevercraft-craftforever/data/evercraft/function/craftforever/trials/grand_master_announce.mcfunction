# Trade Trial — Grand Master Announcement (all 6 categories mastered!)
# Run as/at: the player

tellraw @a ["",{"text":"\n"},{"text":"  \u2605\u2605\u2605 ","color":"gold"},{"selector":"@s","color":"yellow","bold":true},{"text":" has become a ","color":"gray"},{"text":"GRAND MASTER","color":"gold","bold":true},{"text":"! \u2605\u2605\u2605","color":"gold"},{"text":"\n"},{"text":"      All 6 Trial Categories Mastered!","color":"light_purple"},{"text":"\n"}]

playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.5 1.5
particle minecraft:end_rod ~ ~1 ~ 3 3 3 0.1 200
particle minecraft:totem_of_undying ~ ~1 ~ 3 3 3 1.0 500
