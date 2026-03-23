# Fountain menu — Close clicked
# Runs as @s = interaction entity
data remove entity @s interaction
execute as @p[distance=..5] run function evercraft:gacha/fountain/menu/close
