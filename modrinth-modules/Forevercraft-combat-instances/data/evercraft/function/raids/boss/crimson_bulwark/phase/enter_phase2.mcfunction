# The Crimson Bulwark — Enter Phase 2: The Reflector
# Plants shield, creates reflection zone

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_red"},{text:"The Crimson Bulwark",color:"red",bold:true},{text:" plants a shield — the air crackles!",color:"gray",italic:true}]

# VFX
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchant ~ ~1 ~ 5 2 5 0.1 60
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:item.shield.block master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

# Enable reflection
scoreboard players set #rd_cb_reflect ec.var 1

# Speed increase
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase2 0.2 add_multiplied_base
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase2 0.3 add_multiplied_base

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Damage reflection zone active! Attack from range!",color:"yellow",bold:true}]
