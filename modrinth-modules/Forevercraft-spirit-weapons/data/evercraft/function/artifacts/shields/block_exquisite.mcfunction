# Shield Block — Exquisite: Arcane Ward
# Protective ward absorbs damage and regenerates
effect give @s absorption 4 1 false
effect give @s regeneration 4 0 false
execute at @s run particle enchanted_hit ~ ~1 ~ 0.4 0.6 0.4 0.3 12
playsound minecraft:item.shield.block master @s ~ ~ ~ 0.9 1.1
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.4 1.6
