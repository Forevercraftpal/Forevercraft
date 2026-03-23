# Daily Challenge — Macro tellraw announcement
# Reads $(structure) and $(modifier) flavor strings from storage

$tellraw @a ["",{"text":"\n"},{"text":"  \u2600 Daily Challenge","color":"gold","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"$(structure) $(modifier)","color":"yellow","italic":true},{"text":"\n  Seek it out for ","color":"gray"},{"text":"double rewards","color":"gold","bold":true},{"text":"!\n","color":"gray"}]
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.7 1.2
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 0.5 0.8
