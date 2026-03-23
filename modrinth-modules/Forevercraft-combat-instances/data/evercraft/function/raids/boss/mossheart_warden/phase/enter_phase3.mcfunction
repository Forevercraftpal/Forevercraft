# The Mossheart Warden — Enter Phase 3: The Last Stand
# All cores force-destroyed, boss is most dangerous but vulnerable

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_green"},{text:"The Mossheart Warden",color:"green",bold:true},{text:": ",color:"dark_green"},{text:"\"THE DUNGEON IS MINE!\"",color:"dark_red",bold:true,italic:true}]

# Force-destroy remaining cores → create safe zones
execute as @e[tag=ec.rd_mw_core] at @s run summon marker ~ ~ ~ {Tags:["ec.rd_mechanic","ec.rd_mw_safe_zone"]}
kill @e[tag=ec.rd_mw_core]
scoreboard players set #rd_mw_cores_active ec.var 0

# Kill remaining mobs
kill @e[tag=ec.rd_mw_mob]

# VFX
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~1 ~ 4 2 4 0.5 10
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:happy_villager ~ ~1 ~ 6 2 6 0.1 60
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.warden.roar master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

# Reduce armor (more vulnerable)
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/phase3_weak -10 add_value

# Max speed and damage
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase3 0.6 add_multiplied_base
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase3 0.8 add_multiplied_base

# Remove core shield (no more cores)
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s armor modifier remove evercraft:rd_boss/core_shield

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"Stand on the glowing zones to avoid fissure damage!",color:"green",bold:true}]
