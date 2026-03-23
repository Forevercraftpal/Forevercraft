# Beastlord — Shield restriction check
# Drop tank shield from offhand and warn player

execute unless items entity @s weapon.offhand minecraft:shield[custom_data~{tank:1b}] run return 0

# Drop the shield to ground
item replace entity @s weapon.offhand with minecraft:air

# Notify player
tellraw @s [{"text":"[Beastlord] ","color":"dark_purple"},{"text":"Tank shields cannot be used with this class!","color":"red"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
