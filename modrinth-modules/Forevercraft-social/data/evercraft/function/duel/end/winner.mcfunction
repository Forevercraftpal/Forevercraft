# Duel End — Winner Rewards (runs as the winner)

# +5 Victorian tree progress (stat_mobs = mob kills / combat stat)
scoreboard players add @s adv.stat_mobs 5

# Increment daily duel count
scoreboard players add @s ec.duel_today 1

# Victory title
title @s times 5 40 15
title @s title {text:"VICTORY",color:"gold",bold:true}
title @s subtitle {text:"You won the duel!",color:"yellow"}

# Sound
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

# Chat announcement
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@s",color:"green",bold:true},{text:" has won the duel! (+5 Victorian Progress)",color:"yellow"}]

# Companion memory: Duelist's Glory
function evercraft:companions/memories/on_duel_win
