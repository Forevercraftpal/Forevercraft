# Quest Auto-Tracker — Toggle on/off
# Run as player

execute if entity @s[tag=ec.quest_tracking] run tag @s remove ec.quest_tracking
execute if entity @s[tag=ec.quest_tracking] run tellraw @s [{text:"  Quest Tracker: ",color:"gray"},{text:"OFF",color:"red"}]
execute if entity @s[tag=ec.quest_tracking] run return 0

tag @s add ec.quest_tracking
scoreboard players set @s ec.qst_remind 0
scoreboard players set @s ec.qst_lprog 0
tellraw @s [{text:"  Quest Tracker: ",color:"gray"},{text:"ON",color:"green"},{text:" — quest progress reminders in chat",color:"dark_gray"}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
