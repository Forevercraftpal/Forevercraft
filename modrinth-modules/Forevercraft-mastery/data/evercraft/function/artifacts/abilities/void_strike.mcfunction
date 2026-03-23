# Void Strike — Voidbane
# Deals 4 bonus magic damage + Darkness effect on target
advancement revoke @s only evercraft:artifacts/abilities/void_strike_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run damage @s 4 evercraft:bonus_strike
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s darkness 3 0 false
execute at @s run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 20
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.5 0.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
