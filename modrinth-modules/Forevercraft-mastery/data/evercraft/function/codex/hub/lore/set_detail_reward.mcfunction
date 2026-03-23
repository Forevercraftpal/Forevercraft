# Lore — Set Detail Reward Line (Macro)
# Shows the DR reward for completing this set
# Macro args: fill_rar_label, fill_rar_color

# Show reward based on rarity
execute if score #lore_fill_rar ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.LoreDetailReward,distance=..5,limit=1] text set value [{text:"Reward: ",color:"gray"},{text:"+0.25 Dream Rate",color:"aqua"},{text:" + 3 XP",color:"green"}]
execute if score #lore_fill_rar ec.temp matches 2 run data modify entity @e[type=text_display,tag=Adv.LoreDetailReward,distance=..5,limit=1] text set value [{text:"Reward: ",color:"gray"},{text:"+0.35 Dream Rate",color:"aqua"},{text:" + 5 XP",color:"green"}]
execute if score #lore_fill_rar ec.temp matches 3 run data modify entity @e[type=text_display,tag=Adv.LoreDetailReward,distance=..5,limit=1] text set value [{text:"Reward: ",color:"gray"},{text:"+0.50 Dream Rate",color:"aqua"},{text:" + 10 XP",color:"green"}]
execute if score #lore_fill_rar ec.temp matches 4 run data modify entity @e[type=text_display,tag=Adv.LoreDetailReward,distance=..5,limit=1] text set value [{text:"Reward: ",color:"gray"},{text:"+0.65 Dream Rate",color:"aqua"},{text:" + 15 XP",color:"green"}]
execute if score #lore_fill_rar ec.temp matches 5 run data modify entity @e[type=text_display,tag=Adv.LoreDetailReward,distance=..5,limit=1] text set value [{text:"Reward: ",color:"gray"},{text:"+0.80 Dream Rate",color:"aqua"},{text:" + 25 XP",color:"green"}]
execute if score #lore_fill_rar ec.temp matches 6 run data modify entity @e[type=text_display,tag=Adv.LoreDetailReward,distance=..5,limit=1] text set value [{text:"Reward: ",color:"gray"},{text:"+1.00 Dream Rate",color:"aqua"},{text:" + 50 XP",color:"green"}]
