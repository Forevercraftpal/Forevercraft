# The Deepcrawler — Correct Lever!
# Advance sequence. If all 4 correct: cart slams boss for 200 damage

# Advance to next position
scoreboard players add #rd_dc_lever_seq ec.var 1

# VFX: correct lever
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:block.note_block.pling master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.2

# Check if sequence complete (position reached 5 = all 4 correct)
execute if score #rd_dc_lever_seq ec.var matches 5 run function evercraft:raids/boss/deepcrawler/puzzle/lever_slam

# Announce progress
execute if score #rd_dc_lever_seq ec.var matches 2..4 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_gray"},{text:"Raid",color:"gray",bold:true},{text:"] ",color:"dark_gray"},{text:"Correct lever! Keep going!",color:"green"}]
