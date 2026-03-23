# Treasure Head — Check single item entity
# Run as each unchecked item near a player — mark checked + process if treasure head
tag @s add ec.head_checked
execute if items entity @s contents minecraft:player_head[minecraft:custom_data~{treasure:1b}] run function evercraft:treasure/treasure/handler
