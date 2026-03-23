# The Ashen Lord — Wither Skull Impact
# Called as the targeted player, at their position

# VFX at target
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 15
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.05 10
playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1.0 0.8
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.5 1.2

# Damage + Wither
damage @s 3 minecraft:magic by @e[type=wither_skeleton,tag=ec.rd_boss,limit=1]
effect give @s wither 3 0
