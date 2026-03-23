# ============================================================
# Rank Up: Acquaintance (100+ rep)
# ============================================================

scoreboard players set @s ec.rep_rank 1

# Save updated rank to village-specific storage
function evercraft:quests/reputation/save_village_rep

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.2
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 20

tellraw @s ["",{text:"[Reputation] ",color:"gold"},{text:"You are now an ",color:"gray"},{text:"Acquaintance",color:"yellow"},{text:" of this village!",color:"gray"}]
tellraw @s ["",{text:"  Villagers will offer you slightly better trades.",color:"dark_gray",italic:true}]

# Unlock Black Market barrel at this village (if not already placed)
execute at @e[type=armor_stand,tag=bestiary.village.name,distance=..80,limit=1,sort=nearest] unless entity @e[type=marker,tag=BM.Barrel,distance=..48] run function evercraft:black_market/place_barrel
tellraw @s ["",{text:"  A ",color:"dark_gray",italic:true},{text:"Black Market",color:"dark_red",italic:true},{text:" barrel has appeared in the village...",color:"dark_gray",italic:true}]

# Unlock Acquaintance title (bit 2)
scoreboard players add @s ec.special_titles 4
