# ============================================================
# Rank Up: Ally (500+ rep)
# ============================================================

scoreboard players set @s ec.rep_rank 3

# Save updated rank to village-specific storage
function evercraft:quests/reputation/save_village_rep

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.4
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 40

tellraw @s ["",{text:"[Reputation] ",color:"gold"},{text:"You are now an ",color:"gray"},{text:"Ally",color:"aqua"},{text:" of this village!",color:"gray"}]
tellraw @s ["",{text:"  Access to Commission quests. Iron Golems will assist you.",color:"dark_gray",italic:true}]

# Unlock Ally title (bit 4)
scoreboard players add @s ec.special_titles 16
