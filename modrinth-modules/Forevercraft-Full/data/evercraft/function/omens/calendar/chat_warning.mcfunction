# Calendar Omen — Chat Warning (fires once when omen begins)
# Dispatches by #cal_omen_id

execute if score #cal_omen_id ec.var matches 1 run tellraw @a [{text:""},{"text":"\u2728 ","color":"gold"},{"text":"The fields stir with golden energy... a harvest is near.","color":"#D4A574","italic":true}]
execute if score #cal_omen_id ec.var matches 2 run tellraw @a [{text:""},{"text":"\u263D ","color":"dark_red"},{"text":"A crimson haze creeps across the horizon...","color":"#D4A574","italic":true}]
execute if score #cal_omen_id ec.var matches 3 run tellraw @a [{text:""},{"text":"\u2728 ","color":"gold"},{"text":"Distant bells echo on the wind... a trader approaches.","color":"#D4A574","italic":true}]
execute if score #cal_omen_id ec.var matches 4 run tellraw @a [{text:""},{"text":"\u2728 ","color":"aqua"},{"text":"The waters ripple with unusual energy...","color":"#D4A574","italic":true}]
execute if score #cal_omen_id ec.var matches 5 run tellraw @a [{text:""},{"text":"\u2728 ","color":"white"},{"text":"The stars flicker restlessly overhead...","color":"#D4A574","italic":true}]
execute if score #cal_omen_id ec.var matches 6 run tellraw @a [{text:""},{"text":"\u2728 ","color":"dark_purple"},{"text":"Reality fractures at the edges of your vision...","color":"#D4A574","italic":true}]
execute if score #cal_omen_id ec.var matches 7 run tellraw @a [{text:""},{"text":"\u2728 ","color":"green"},{"text":"A warm wind carries whispers of fortune...","color":"#D4A574","italic":true}]
execute if score #cal_omen_id ec.var matches 8 run tellraw @a [{text:""},{"text":"\u2728 ","color":"light_purple"},{"text":"The Skyrift Derby approaches! Saddle up or spread your wings!","color":"#D4A574","italic":true}]

# Subtle sound cue
execute as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 0.8
