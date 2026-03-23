# ============================================================
# Heroic Quest Expired
# ============================================================

# Clear heroic quest
scoreboard players set @s ec.quest_id_6 0
scoreboard players set @s ec.quest_prog_6 0
scoreboard players set @s ec.quest_expiry 0

# Reputation penalty (-50)
scoreboard players remove @s ec.village_rep 50

# Persist rep change (also triggers exile check if rep < 0)
function evercraft:quests/reputation/save_village_rep

# Notification
playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.5 0.5
tellraw @s ["",{text:"✦ ",color:"dark_red"},{text:"[Forevercraft] ",color:"gold"},{text:"Your Heroic quest has expired...",color:"dark_red"}]
tellraw @s ["",{text:"  You lost ",color:"gray"},{text:"50 reputation",color:"red"},{text:" with the village.",color:"gray"}]

title @s times 10 50 20
title @s title {text:"QUEST FAILED",color:"dark_red",bold:true}
title @s subtitle {text:"The legends fade...",color:"gray",italic:true}
