# Hollow Sovereign — Reflect Damage (boss was hit during silence)
# Called as boss entity, at boss position
# Punish the nearest participant (likely the attacker) with reflected damage

# Find nearest participant (most likely attacker) and deal 8 reflected damage
damage @a[tag=ec.rd_participant,sort=nearest,limit=1,distance=..6] 8 minecraft:thorns

# VFX on the punished player
execute at @a[tag=ec.rd_participant,sort=nearest,limit=1,distance=..6] run particle minecraft:damage_indicator ~ ~1 ~ 0.3 0.3 0.3 0.1 5
execute at @a[tag=ec.rd_participant,sort=nearest,limit=1,distance=..6] run playsound minecraft:enchant.thorns.hit hostile @s ~ ~ ~ 1.0 0.6

# Heal boss slightly (reflected attacks heal it)
effect give @s instant_damage 1 0 true

# Feedback
tellraw @a[tag=ec.rd_participant,sort=nearest,limit=1,distance=..6] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"Your attack was reflected!","color":"red"}]
