# Arrow Check New — run as each unchecked spectral arrow
# Tags lightning arrows and marks all as checked in one entity pass
tag @s add ec.arrow_checked
execute if data entity @s item.components."minecraft:custom_data".lightning_arrow run tag @s add ec.lightning_arrow
