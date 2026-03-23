# The Venomweaver — Spawn Egg Sac
# Creates an egg sac (interaction entity) at a random position near boss

# Spawn egg sac at random offset from boss
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run summon interaction ~0 ~0 ~0 {Tags:["ec.rd_mechanic","ec.rd_vw_egg"],width:2.0f,height:2.0f,response:1b}

# Spread it to a random position near the boss
execute as @e[tag=ec.rd_vw_egg,limit=1,sort=nearest] at @e[type=cave_spider,tag=ec.rd_boss,limit=1] run spreadplayers ~ ~ 3 12 false @s

# Initialize egg hatch timer (stored as tag cycling: egg starts with no hit tags)
# Egg tracking: we use the fight timer — eggs hatch 200 ticks after spawn
# Store spawn time on the egg
execute store result score @e[tag=ec.rd_vw_egg,limit=1,sort=nearest] ec.var run scoreboard players get #rd_timer ec.var

# VFX
execute as @e[tag=ec.rd_vw_egg,limit=1,sort=nearest] at @s run particle minecraft:item_cobweb ~ ~1 ~ 0.5 0.5 0.5 0.02 15
execute as @e[tag=ec.rd_vw_egg,limit=1,sort=nearest] at @s run playsound minecraft:entity.spider.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.5

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"An egg sac appears! Destroy it before it hatches!",color:"yellow"}]
