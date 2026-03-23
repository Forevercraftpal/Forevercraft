# Macro function — $(tier) is the stone tier
# Re-give the consumed stone
$loot give @s loot evercraft:weapon_mastery/stones/$(tier)_stone
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This weapon is already awakened!",color:"red"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
