# Give player the Fountain of Eternal Dreams placement item
# Called from Codex button
# Runs as @s = player

# Check limit (3 max per player)
execute if score @s ec.fountains matches 3.. run return run tellraw @s [{"text":"\u2726 ","color":"red"},{"text":"You already own the maximum of ","color":"gray"},{"text":"3 Fountains","color":"gold"},{"text":".","color":"gray"},{"text":" \u2726","color":"red"}]

loot give @s loot evercraft:gacha/fountain_item
scoreboard players add @s ec.fountains 1

tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Fountain of Eternal Dreams","color":"gold","bold":true},{"text":" added to inventory!","color":"gray"},{"text":" \u2726","color":"#E0B0FF"}]
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.7 1.2
