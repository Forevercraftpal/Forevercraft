# The Eternal Pharaoh — Curse Hit
# Called as the cursed player at their position
# Randomly applies one of 3 curses

# Roll 1-3 for curse type
execute store result score #rd_temp ec.var run random value 1..3

# Curse of Slowness: Slowness III for 10 seconds
execute if score #rd_temp ec.var matches 1 run effect give @s slowness 10 2
execute if score #rd_temp ec.var matches 1 run tellraw @s [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Curse of Slowness!",color:"dark_purple",bold:true},{text:" Use the altar to cleanse!",color:"gray"}]

# Curse of Weakness: Weakness II for 10 seconds
execute if score #rd_temp ec.var matches 2 run effect give @s weakness 10 1
execute if score #rd_temp ec.var matches 2 run tellraw @s [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Curse of Weakness!",color:"dark_purple",bold:true},{text:" Use the altar to cleanse!",color:"gray"}]

# Curse of Blindness: Blindness for 8 seconds
execute if score #rd_temp ec.var matches 3 run effect give @s blindness 8 0
execute if score #rd_temp ec.var matches 3 run tellraw @s [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Curse of Blindness!",color:"dark_purple",bold:true},{text:" Use the altar to cleanse!",color:"gray"}]

# VFX on cursed player
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.05 15
playsound minecraft:entity.evoker.prepare_attack master @s ~ ~ ~ 1.0 0.5
