# The Deepcrawler — Enter Phase 2: The Rail Storm
# Minecarts activate, spider swarms begin

# Boss dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_gray"},{text:"The Deepcrawler",color:"gray",bold:true},{text:" screeches — the rails begin to rattle!",color:"dark_gray",italic:true}]

# Phase 2 VFX
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.8,0.5,0.2],scale:2.0} ~ ~1 ~ 4 2 4 0 60
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.silverfish.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

# Force boss above ground
scoreboard players set #rd_dc_above ec.var 1
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect clear @s invisibility
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect clear @s resistance

# Boss speed increase
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase2 0.2 add_multiplied_base
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase2 0.5 add_multiplied_base

# Start first lever sequence opportunity
function evercraft:raids/boss/deepcrawler/puzzle/lever_sequence

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_gray"},{text:"Raid",color:"gray",bold:true},{text:"] ",color:"dark_gray"},{text:"The rail system activates! Watch for incoming carts!",color:"yellow",bold:true}]
