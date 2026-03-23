# The Deepcrawler — Cart Slam (all 4 levers correct!)
# Cart redirected directly into boss: 200 damage

# Reset sequence
scoreboard players set #rd_dc_lever_seq ec.var 0

# Deal 200 damage to boss
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run damage @s 200 minecraft:mob_attack

# Stun boss briefly
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect give @s slowness 3 4 true
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect give @s glowing 5 0 true

# Massive VFX
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~1 ~ 3 2 3 0.5 15
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:crit ~ ~1 ~ 3 2 3 0.5 50
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.generic.explode master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:block.anvil.land master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.4

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_gray"},{text:"Raid",color:"gray",bold:true},{text:"] ",color:"dark_gray"},{text:"DIRECT HIT! The cart SLAMS into The Deepcrawler!",color:"gold",bold:true}]
