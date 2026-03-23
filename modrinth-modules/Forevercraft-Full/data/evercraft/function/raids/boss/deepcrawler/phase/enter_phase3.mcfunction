# The Deepcrawler — Enter Phase 3: The True Form
# Boss reveals massive true form, darkness mechanic begins

# Boss dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_gray"},{text:"The Deepcrawler",color:"gray",bold:true},{text:": ",color:"dark_gray"},{text:"\"YOU HAVE NOT SEEN MY TRUE FORM!\"",color:"dark_red",bold:true,italic:true}]

# Kill remaining spiders
kill @e[tag=ec.rd_dc_spider]

# True form: size increase
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s scale base set 8.0

# Phase 3 VFX
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~2 ~ 4 2 4 0.5 10
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.1,0.1,0.15],scale:3.0} ~ ~2 ~ 6 3 6 0 80
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.warden.roar master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.4
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.ender_dragon.growl master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.3

# Force boss above ground permanently (no more burrowing)
scoreboard players set #rd_dc_above ec.var 1
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect clear @s invisibility

# Max power
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase3 0.3 add_multiplied_base
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase3 1.0 add_multiplied_base

# Start lever sequence for phase 3
function evercraft:raids/boss/deepcrawler/puzzle/lever_sequence

# Initial darkness
scoreboard players set #rd_dc_dark_timer ec.var 40
