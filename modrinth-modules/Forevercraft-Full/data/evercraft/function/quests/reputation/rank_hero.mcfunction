# ============================================================
# Rank Up: Hero (1000+ rep)
# Unlocks Heroic quests and noon gifts
# ============================================================

scoreboard players set @s ec.rep_rank 4
scoreboard players set @s ec.rep_hero 1

# Save updated rank to village-specific storage
function evercraft:quests/reputation/save_village_rep

playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 50
effect give @s minecraft:hero_of_the_village 200 0 true

title @s times 10 60 20
title @s title {text:"HERO",color:"dark_purple",bold:true}
title @s subtitle {text:"The village honors you!",color:"light_purple",italic:true}

tellraw @s ["",{text:"[Reputation] ",color:"gold"},{text:"You are now a ",color:"gray"},{text:"HERO",color:"dark_purple",bold:true},{text:" of this village! ",color:"gray"},{text:"Heroic quests",color:"light_purple"},{text:" | ",color:"dark_gray"},{text:"Noon gifts",color:"light_purple"},{text:" | ",color:"dark_gray"},{text:"Max discounts",color:"light_purple"},{text:" | ",color:"dark_gray"},{text:"Defense Horn!",color:"green",bold:true}]

# Grant Village Defense Horn locked to this village
execute store result storage eden:temp horn.village_id int 1 run scoreboard players get @s ec.current_village
function evercraft:dungeon/village/give_horn_macro with storage eden:temp horn

# Unlock Hero title (bit 5)
scoreboard players add @s ec.special_titles 32
