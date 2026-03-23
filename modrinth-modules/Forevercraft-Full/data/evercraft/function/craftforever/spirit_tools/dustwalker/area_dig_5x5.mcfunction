# === DUSTWALKER — 5x5 EXCAVATION (facing-aware) ===
# Mines a 5x5 plane of shovel-mineable blocks
# Run as player, at position of broken block

# Looking down/up → horizontal plane
execute if entity @s[x_rotation=45..90] positioned ~-2 ~ ~-2 run fill ~ ~ ~ ~4 ~ ~4 air replace #minecraft:mineable/shovel
execute if entity @s[x_rotation=45..90] run return 0
execute if entity @s[x_rotation=-90..-45] positioned ~-2 ~ ~-2 run fill ~ ~ ~ ~4 ~ ~4 air replace #minecraft:mineable/shovel
execute if entity @s[x_rotation=-90..-45] run return 0

# Facing North/South → XY plane
execute if entity @s[y_rotation=135..225] positioned ~-2 ~-2 ~ run fill ~ ~ ~ ~4 ~4 ~ air replace #minecraft:mineable/shovel
execute if entity @s[y_rotation=135..225] run return 0
execute if entity @s[y_rotation=-45..45] positioned ~-2 ~-2 ~ run fill ~ ~ ~ ~4 ~4 ~ air replace #minecraft:mineable/shovel
execute if entity @s[y_rotation=-45..45] run return 0

# Facing East/West → ZY plane
execute if entity @s[y_rotation=45..135] positioned ~ ~-2 ~-2 run fill ~ ~ ~ ~ ~4 ~4 air replace #minecraft:mineable/shovel
execute if entity @s[y_rotation=45..135] run return 0
execute if entity @s[y_rotation=225..315] positioned ~ ~-2 ~-2 run fill ~ ~ ~ ~ ~4 ~4 air replace #minecraft:mineable/shovel

# Sound + particles
playsound minecraft:block.gravel.break master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.5 1.2
particle block{block_state:"dirt"} ~ ~0.5 ~ 1 0.5 1 0.2 15
