# ============================================================
# Journal Display — Trigger Handler
# Route to appropriate page based on jn.view value
# 1=overview, 2=biomes, 3=structures, 4=villages, 5=secrets, 6=bonuses
# ============================================================

execute if score @s jn.view matches 1 run function evercraft:journal/display/overview
execute if score @s jn.view matches 2 run function evercraft:journal/display/biomes
execute if score @s jn.view matches 3 run function evercraft:journal/display/structures
execute if score @s jn.view matches 4 run function evercraft:journal/display/villages
execute if score @s jn.view matches 5 run function evercraft:journal/display/secrets
execute if score @s jn.view matches 6 run function evercraft:journal/display/bonuses
execute if score @s jn.view matches 7 run function evercraft:milestones/display/page1

# Reset trigger
scoreboard players set @s jn.view 0
scoreboard players enable @s jn.view
