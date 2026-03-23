# The Venomweaver — Enter Phase 3: The Descent
# Permanent ground melee, poison clouds, antidote flowers activate

# Boss dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_green"},{text:"The Venomweaver",color:"green",bold:true},{text:": ",color:"dark_green"},{text:"\"THE JUNGLE ITSELF WILL CONSUME YOU!\"",color:"dark_red",bold:true,italic:true}]

# Kill remaining eggs and spiders
kill @e[tag=ec.rd_vw_egg]
kill @e[tag=ec.rd_vw_spider]

# Phase 3 VFX burst
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_slime ~ ~1 ~ 6 3 6 0.2 150
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_cobweb ~ ~1 ~ 5 2 5 0.15 80
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.ender_dragon.growl master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.4
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.spider.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.2

# Max boss power
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase3 0.35 add_multiplied_base
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase3 0.8 add_multiplied_base

# Reset cloud cooldown for immediate first cloud
scoreboard players set #rd_vw_cloud_cd ec.var 40

# Perches are already interaction entities — just clear any pending interaction data
# They now serve double duty as antidote flower click targets
execute as @e[tag=ec.rd_vw_perch] run data remove entity @s interaction

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"Antidote flowers bloom on the vines! Right-click for poison immunity!",color:"green",bold:true}]
