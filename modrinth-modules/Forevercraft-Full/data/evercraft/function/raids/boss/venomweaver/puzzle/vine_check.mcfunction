# The Venomweaver — Vine Check
# Checks if any vine pillar was hit (interaction click) and if it matches the glow color

# Check perch 1 (red) for click
execute as @e[tag=ec.rd_vw_perch1] if data entity @s interaction run function evercraft:raids/boss/venomweaver/puzzle/vine_clicked_1

# Check perch 2 (blue) for click
execute as @e[tag=ec.rd_vw_perch2] if data entity @s interaction run function evercraft:raids/boss/venomweaver/puzzle/vine_clicked_2

# Check perch 3 (green) for click
execute as @e[tag=ec.rd_vw_perch3] if data entity @s interaction run function evercraft:raids/boss/venomweaver/puzzle/vine_clicked_3
