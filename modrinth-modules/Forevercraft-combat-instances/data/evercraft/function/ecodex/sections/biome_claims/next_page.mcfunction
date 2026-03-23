# Biome Claims — Next Page
# Run as: player (from interaction click bridge)

# Increment page
scoreboard players add @s ec.bm_page 1
execute if score @s ec.bm_page matches 2.. run scoreboard players set @s ec.bm_page 1

# Kill current page content and respawn
execute at @s as @e[tag=Ec.BmPageContent,distance=..15] run kill @s
function evercraft:ecodex/sections/biome_claims/spawn_page
