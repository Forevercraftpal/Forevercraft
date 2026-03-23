# Lore Claims — Next Page
# Run as: player (from interaction click bridge)

# Increment page
scoreboard players add @s ec.lr_page 1
execute if score @s ec.lr_page matches 9.. run scoreboard players set @s ec.lr_page 8

# Kill current page content and respawn
execute at @s as @e[tag=Ec.LrPageContent,distance=..15] run kill @s
function evercraft:ecodex/sections/lore_claims/spawn_page
