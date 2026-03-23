# The Venomweaver — Enter Phase 2: The Brood
# Boss descends from perches, egg sacs begin spawning

# Boss dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_green"},{text:"The Venomweaver",color:"green",bold:true},{text:": ",color:"dark_green"},{text:"\"My children will feast on your bones!\"",color:"dark_purple",italic:true}]

# Phase 2 VFX burst
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_cobweb ~ ~1 ~ 4 2 4 0.1 60
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_slime ~ ~1 ~ 3 2 3 0.1 40
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.spider.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

# Teleport boss to ground level (at a participant's position)
execute at @a[tag=ec.rd_participant,sort=random,limit=1] as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run tp @s ~ ~ ~

# Boss speed increase
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase2 0.2 add_multiplied_base

# Boss attack damage increase
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase2 0.3 add_multiplied_base

# Reset rage counter
scoreboard players set #rd_vw_rage ec.var 0

# Spawn first batch of eggs
function evercraft:raids/boss/venomweaver/abilities/spawn_egg
function evercraft:raids/boss/venomweaver/abilities/spawn_egg
