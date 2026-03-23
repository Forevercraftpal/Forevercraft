# Macro function — $(tier) is the stone tier
# Re-give the consumed stone
$loot give @s loot evercraft:weapon_mastery/stones/$(tier)_stone
$tellraw @s [{text:"[Mastery] ",color:"gold"},{text:"This stone can only awaken ",color:"red"},{text:"$(tier)",color:"yellow"},{text:" artifacts. Hold a weapon or wear matching armor!",color:"red"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
