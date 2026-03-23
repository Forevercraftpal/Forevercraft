# The Venomweaver — Egg Sac Hit (Destroyed by Player)
# Called as the egg sac entity

# Clear interaction data
data remove entity @s interaction

# Increase Venomweaver rage (+5% damage per egg destroyed, max 20%)
execute if score #rd_vw_rage ec.var matches ..15 run scoreboard players add #rd_vw_rage ec.var 5

# Apply rage damage modifier to boss (remove old, add new)
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier remove evercraft:rd_boss/vw_rage

# Calculate rage modifier: rage / 100 (5 = 0.05, 10 = 0.10, etc.)
# Apply via multiply base: +5% per stack
execute if score #rd_vw_rage ec.var matches 5 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/vw_rage 0.05 add_multiplied_base
execute if score #rd_vw_rage ec.var matches 10 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/vw_rage 0.10 add_multiplied_base
execute if score #rd_vw_rage ec.var matches 15 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/vw_rage 0.15 add_multiplied_base
execute if score #rd_vw_rage ec.var matches 20 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/vw_rage 0.20 add_multiplied_base

# VFX: egg destroyed
particle minecraft:item_cobweb ~ ~1 ~ 0.5 0.5 0.5 0.1 20
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.2 10
playsound minecraft:entity.spider.death master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.2

# Announce
execute if score #rd_vw_rage ec.var matches 1.. run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"Egg sac destroyed! The Venomweaver grows enraged!",color:"red"}]

# Kill this egg
kill @s
