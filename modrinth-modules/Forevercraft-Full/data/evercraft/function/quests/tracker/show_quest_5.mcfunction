# Quest Tracker — Show Tier 5 quest progress in chat
# Run as player
tellraw @s [{text:"✦ ",color:"gold"},{text:"Quest T",color:"yellow"},{text:"5",color:"gold",bold:true},{text:" — Progress: ",color:"gray"},{score:{name:"@s",objective:"ec.quest_prog_5"},color:"green"},{text:" ",color:"gray"},{text:"[Cancel]",color:"red",italic:true,click_event:{action:"run_command",command:"/trigger ec.quest set 35"}},{text:" ",color:"gray"},{text:"[Toggle]",color:"dark_gray",click_event:{action:"run_command",command:"/trigger ec.quest_track set 1"}}]
scoreboard players set @s ec.qst_remind 0
scoreboard players operation @s ec.qst_lprog = #qst_total quests.temp
