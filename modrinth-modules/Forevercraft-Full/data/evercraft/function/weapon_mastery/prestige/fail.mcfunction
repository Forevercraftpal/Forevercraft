# Re-give the consumed token
loot give @s loot evercraft:weapon_mastery/prestige_token
tellraw @s [{text:"[Mastery] ",color:"gold"},{text:"No gear ready for prestige! Need a max-level awakened weapon or armor.",color:"red"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
