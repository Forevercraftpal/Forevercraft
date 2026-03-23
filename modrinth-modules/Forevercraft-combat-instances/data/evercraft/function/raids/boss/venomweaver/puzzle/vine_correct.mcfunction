# The Venomweaver — Correct Vine Match!
# Boss is staggered (stunned for 60 ticks / 3 seconds)

# Clear the glow color to prevent re-triggering
scoreboard players set #rd_vw_glow_color ec.var 0

# Stun the boss: Slowness V + no AI for 3 seconds
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run effect give @s slowness 3 4 true
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run effect give @s weakness 3 4 true
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run data modify entity @s NoAI set value 1b

# Schedule AI restore
schedule function evercraft:raids/boss/venomweaver/puzzle/vine_unstun 60t

# VFX: stagger burst
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:crit ~ ~1 ~ 2 1 2 0.3 40
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchant ~ ~1 ~ 1 1 1 0.5 30
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.player.attack.crit master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.6
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.elder_guardian.curse master @a[tag=ec.rd_participant] ~ ~ ~ 0.8 1.5

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"CORRECT! The Venomweaver is staggered!",color:"green",bold:true}]
