# Lore Claims — Previous Page
# Run as: player (from interaction click bridge)

# Decrement page
scoreboard players remove @s ec.lr_page 1
execute if score @s ec.lr_page matches ..-1 run scoreboard players set @s ec.lr_page 0

# Kill current page content and respawn
execute at @s as @e[tag=Ec.LrPageContent,distance=..15] run kill @s
function evercraft:ecodex/sections/lore_claims/spawn_page
