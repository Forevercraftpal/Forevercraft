# The Leviathan — Laser Hit Check
# Called as the targeted player at their position

# Check if boss is within 20 blocks
execute if entity @e[type=guardian,tag=ec.rd_boss,distance=..20] run damage @s 15 minecraft:magic by @e[type=guardian,tag=ec.rd_boss,limit=1]
execute if entity @e[type=guardian,tag=ec.rd_boss,distance=..20] run particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.2 20
execute if entity @e[type=guardian,tag=ec.rd_boss,distance=..20] run playsound minecraft:entity.elder_guardian.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 1.0
