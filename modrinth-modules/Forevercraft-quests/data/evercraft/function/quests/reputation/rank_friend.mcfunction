# ============================================================
# Rank Up: Friend (250+ rep)
# ============================================================

scoreboard players set @s ec.rep_rank 2

# Save updated rank to village-specific storage
function evercraft:quests/reputation/save_village_rep

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.3
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 30

tellraw @s ["",{text:"[Reputation] ",color:"gold"},{text:"You are now a ",color:"gray"},{text:"Friend",color:"green"},{text:" of this village!",color:"gray"}]
tellraw @s ["",{text:"  Access to Contract quests. Better trade prices.",color:"dark_gray",italic:true}]

# Unlock Friend title (bit 3)
scoreboard players add @s ec.special_titles 8
