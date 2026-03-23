# The Venomweaver — Antidote Flower Tick (Phase 3)
# Vine pillars become antidote sources — right-click for 10s poison immunity
# 3 charges per vine (tracked on perch markers via tag cycling)

# Check perch 1 for click
execute as @e[tag=ec.rd_vw_perch1] if data entity @s interaction run function evercraft:raids/boss/venomweaver/puzzle/antidote_use

# Check perch 2 for click
execute as @e[tag=ec.rd_vw_perch2] if data entity @s interaction run function evercraft:raids/boss/venomweaver/puzzle/antidote_use

# Check perch 3 for click
execute as @e[tag=ec.rd_vw_perch3] if data entity @s interaction run function evercraft:raids/boss/venomweaver/puzzle/antidote_use

# Flower particles on perches that still have charges
execute as @e[tag=ec.rd_vw_perch,tag=!ec.rd_vw_empty] at @s run particle minecraft:happy_villager ~ ~-1 ~ 0.3 0.3 0.3 0.02 2
