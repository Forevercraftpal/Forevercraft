# World Boss — Roll 1% chance to add Totem of Summoning to crate barrel
# Called at the barrel's position (aligned xyz) after loot is inserted
# Must be executed before shuffle_barrel

execute store result score #wb_temp ec.var run random value 1..100
execute unless score #wb_temp ec.var matches 1 run return 0

# 1% hit — insert totem into barrel
loot insert ~ ~ ~ loot evercraft:bosses/totem

# Announce to nearest player
tellraw @p [{text:"[Boss] ",color:"dark_red"},{text:"A ",color:"gray"},{text:"Totem of Summoning",color:"gold",bold:true},{text:" was found in this crate!",color:"gray"}]
playsound minecraft:block.note_block.chime master @p ~ ~ ~ 1.0 1.0
