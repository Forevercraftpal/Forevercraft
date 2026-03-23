# Biome Mastery — Level Up announcement and reward application
# @s = player, ec.bm_level = new level, ec.biome_id = current biome

# Get biome name for display (writes to evercraft:briefing biome_name)
function evercraft:briefing/get_biome_name

# Announce with biome name
function evercraft:biome_mastery/announce_levelup with storage evercraft:briefing

# Level-specific reward details
execute if score @s ec.bm_level matches 1 run tellraw @s [{text:"  Visitor",color:"white"},{text:" — You're getting familiar with this biome!",color:"gray"}]
execute if score @s ec.bm_level matches 2 run tellraw @s [{text:"  Familiar",color:"aqua"},{text:" — +0.1 Dream Rate in this biome!",color:"gray"}]
execute if score @s ec.bm_level matches 3 run tellraw @s [{text:"  Resident",color:"#4FC3F7"},{text:" — Patron aggro reduced here!",color:"gray"}]
execute if score @s ec.bm_level matches 4 run tellraw @s [{text:"  Warden",color:"#AB47BC"},{text:" — +0.35 Dream Rate in this biome!",color:"gray"}]
execute if score @s ec.bm_level matches 5 run tellraw @s [{text:"  Master",color:"gold",bold:true},{text:" — +0.5 Dream Rate! Biome title & perk unlocked!",color:"gray"}]

tellraw @s {text:""}

# Sound effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score @s ec.bm_level matches 5 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

# Apply dream rate modifier
function evercraft:biome_mastery/apply_dr

# Apply title at level 5 (announced to all players)
execute if score @s ec.bm_level matches 5 run function evercraft:biome_mastery/apply_title

# Announce and apply biome perk at level 5
execute if score @s ec.bm_level matches 5 run function evercraft:biome_mastery/announce_perk
execute if score @s ec.bm_level matches 5 run function evercraft:biome_mastery/apply_perk
