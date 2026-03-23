# Lore Collect: Notify player this piece is already collected
tellraw @s [{"text":"[Lore] ","color":"gold"},{"text":"Already collected!","color":"yellow"},{"text":" Trade it to another player instead.","color":"gray","italic":true}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
