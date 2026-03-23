# The Crimson Bulwark — Enter Phase 3: The Dual Shield Storm
# Boss dual-wields shields, shield throw + spin attacks

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_red"},{text:"The Crimson Bulwark",color:"red",bold:true},{text:": ",color:"dark_red"},{text:"\"NOTHING BREAKS THESE WALLS!\"",color:"dark_red",bold:true,italic:true}]

# Kill remaining guards
kill @e[tag=ec.rd_cb_guard]

# Disable reflection zone
scoreboard players set #rd_cb_reflect ec.var 0

# VFX
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~1 ~ 4 2 4 0.5 10
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.9,0.1,0.1],scale:3.0} ~ ~1 ~ 5 2 5 0 80
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.warden.roar master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:item.shield.break master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

# Remove resistance — boss is vulnerable but very aggressive
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run effect clear @s resistance

# Max power
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase3 0.4 add_multiplied_base
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase3 0.8 add_multiplied_base

# Reset pillar HP
scoreboard players set #rd_cb_pillar_hp1 ec.var 3
scoreboard players set #rd_cb_pillar_hp2 ec.var 3
scoreboard players set #rd_cb_pillar_hp3 ec.var 3
scoreboard players set #rd_cb_pillar_hp4 ec.var 3

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Use pillars for cover from shield throws! Attack after shield spins!",color:"yellow",bold:true}]
