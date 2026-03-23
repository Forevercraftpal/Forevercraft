# Calculated Strike — Robot Dancer's Sword (Mythical)
# 20% chance to deal double damage on hit

# Revoke for re-trigger
advancement revoke @s only evercraft:artifacts/abilities/calculated_strike_trigger

# 20% chance (200 out of 1000)
execute store result score #roll ec.var run random value 1..1000

# Double damage — deal 10 bonus damage (uses bonus_strike to avoid double armor reduction)
execute if score #roll ec.var matches 1..200 at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 10 evercraft:bonus_strike
execute if score #roll ec.var matches 1..200 run particle crit ~ ~1 ~ 0.5 0.5 0.5 0.3 20
execute if score #roll ec.var matches 1..200 run particle electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.1 10
execute if score #roll ec.var matches 1..200 run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
