# World Event Omen — Chat Warning (fires once when omen begins)
# Dispatches by #we_omen_id

execute if score #we_omen_id ec.var matches 1 run tellraw @a [{text:""},{"text":"\u2728 ","color":"white"},{"text":"The constellation's alignment draws near... look to the sky.","color":"#D4A574","italic":true}]
execute if score #we_omen_id ec.var matches 3 run tellraw @a [{text:""},{"text":"\u2728 ","color":"dark_gray"},{"text":"The earth groans beneath your feet...","color":"#D4A574","italic":true}]
execute if score #we_omen_id ec.var matches 4 run tellraw @a [{text:""},{"text":"\u2728 ","color":"green"},{"text":"Dawn's first light carries an otherworldly shimmer...","color":"#D4A574","italic":true}]
execute if score #we_omen_id ec.var matches 5 run tellraw @a [{text:""},{"text":"\u2728 ","color":"dark_purple"},{"text":"The boundary between worlds grows thin...","color":"#D4A574","italic":true}]

# Subtle sound cue
execute as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 0.8
