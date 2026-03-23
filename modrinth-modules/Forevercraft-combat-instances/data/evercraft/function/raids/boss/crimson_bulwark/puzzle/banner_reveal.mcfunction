# The Crimson Bulwark — Banner Reveal (Weak Point Exposed)
# Boss takes double damage for 160 ticks (8 seconds)

# Remove boss resistance and armor temporarily
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run effect clear @s resistance
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run effect give @s glowing 8 0 true

# Apply weakness debuff that doubles incoming damage (Vulnerability simulation)
# Remove armor modifier temporarily
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/banner_weak -20 add_value

# Schedule armor restore
schedule function evercraft:raids/boss/crimson_bulwark/puzzle/banner_restore 160t

# VFX: weak point revealed
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:crit ~ ~1 ~ 1 1 1 0.3 30
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchant ~ ~1 ~ 1 1 1 0.5 20
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.player.attack.crit master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.8

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Weak point exposed! Full damage for 8 seconds!",color:"green",bold:true}]
