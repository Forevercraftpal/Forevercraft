# ============================================================
# Rank Up: Legend (2500+ rep)
# Maximum reputation tier
# ============================================================

scoreboard players set @s ec.rep_rank 5

# Save updated rank to village-specific storage
function evercraft:quests/reputation/save_village_rep

playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.death player @s ~ ~ ~ 0.3 1.5
particle totem_of_undying ~ ~1 ~ 1 1 1 0.3 100
effect give @s minecraft:hero_of_the_village 600 1 true
effect give @s minecraft:glowing 30 0 true

title @s times 10 80 30
title @s title {text:"✦ LEGEND ✦",color:"gold",bold:true}
title @s subtitle {text:"Your name echoes through history!",color:"yellow",italic:true}

# Announce to server
tellraw @a ["",{text:"✦ ",color:"gold"},{selector:"@s"},{text:" has become a ",color:"gray"},{text:"LEGEND",color:"gold",bold:true},{text:" of the village!",color:"gray"}]

tellraw @s ["",{text:"[Reputation] ",color:"gold"},{text:"You are now a ",color:"gray"},{text:"LEGEND",color:"gold",bold:true},{text:"! ",color:"gray"},{text:"2x noon gifts",color:"yellow"},{text:" | ",color:"dark_gray"},{text:"Villager cheers",color:"yellow"},{text:" | ",color:"dark_gray"},{text:"Hero of Village II",color:"yellow"}]

# Award Dreamer's Quill (+1 permanent DR) if not already owned
execute unless score @s ec.quill_count matches 1.. run loot give @s loot evercraft:items/dreamers_quill
execute unless score @s ec.quill_count matches 1.. run tellraw @s ["",{text:"  ",color:"gray"},{text:"✦ ",color:"gold"},{text:"Dreamer's Quill",color:"gold",bold:true},{text:" received! (+1 Dream Rate)",color:"yellow"}]

# Village Specialization: Check if this village should be upgraded (iron golem guards)
execute at @s run function evercraft:village/upgrades/check_legend

# Unlock Legend title (bit 6)
scoreboard players add @s ec.special_titles 64
