# Friend Heart — Notify player of friendship level up
# #fr_level ec.temp = new level, level_name and level_color in storage

function evercraft:friends/heart/level_up_msg with storage evercraft:friends temp
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.6 1.2
