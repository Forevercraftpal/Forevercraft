# ============================================================
# Black Market — Barrel Hit Check
# Verifies the barrel is a Black Market barrel and opens GUI
# Run at: barrel block position
# ============================================================

# Check if a BM marker exists at this barrel (most reliable detection)
execute unless entity @e[type=marker,tag=BM.Barrel,distance=..1] run return 0

# This IS a Black Market barrel — consume the click regardless of rep
scoreboard players set @s ec.bm_temp 1

# Must be within a village
execute unless entity @e[type=armor_stand,tag=bestiary.village.name,distance=..80] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This barrel must be placed within a village to operate.",color:"gray",italic:true}]

# Check reputation — need Acquaintance (rank 1+)
execute unless score @s ec.rep_rank matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You haven't earned enough trust to trade here...",color:"gray",italic:true}]

# All checks passed — open the GUI
function evercraft:black_market/gui/open
