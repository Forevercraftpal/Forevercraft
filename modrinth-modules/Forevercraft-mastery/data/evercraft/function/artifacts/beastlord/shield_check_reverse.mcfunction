# Beastlord — Reverse shield restriction
# Catches: beastlord spear in offhand + shield in mainhand
# Drops the shield from mainhand

item replace entity @s weapon.mainhand with minecraft:air

tellraw @s [{"text":"[Beastlord] ","color":"dark_purple"},{"text":"Shields cannot be used with Beastlord weapons!","color":"red"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
