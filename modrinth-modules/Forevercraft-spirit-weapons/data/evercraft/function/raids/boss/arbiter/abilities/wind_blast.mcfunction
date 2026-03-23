# Arbiter — Wind Blast
# Fires a wind projectile toward nearest player (knockback + damage)

# Summon wind charge toward nearest player
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon snowball ~ ~1 ~ {Tags:["ec.rd_arb_proj","ec.rd_minion"],Motion:[0.0,0.0,0.0]}

# Aim projectile toward nearest participant
execute as @e[tag=ec.rd_arb_proj,limit=1,sort=nearest] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] eyes run tp @s ^ ^ ^1.5

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.wind_charge.throw hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8
execute as @e[tag=ec.rd_arb_proj] at @s run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 3
