# Personal Milestones — Next Page
# Run as: player (from interaction click bridge)

# Increment page
scoreboard players add @s ec.pm_page 1
execute if score @s ec.pm_page matches 13.. run scoreboard players set @s ec.pm_page 12

# Kill current page content and respawn
execute at @s as @e[tag=Ec.PMPageContent,distance=..15] run kill @s
function evercraft:ecodex/sections/personal_claims/spawn_page
