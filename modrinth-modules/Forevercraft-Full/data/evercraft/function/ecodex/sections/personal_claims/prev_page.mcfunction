# Personal Milestones — Previous Page
# Run as: player (from interaction click bridge)

# Decrement page
scoreboard players remove @s ec.pm_page 1
execute if score @s ec.pm_page matches ..-1 run scoreboard players set @s ec.pm_page 0

# Kill current page content and respawn
execute at @s as @e[tag=Ec.PMPageContent,distance=..15] run kill @s
function evercraft:ecodex/sections/personal_claims/spawn_page
