# The Starless Night — Mythical Sword
# On Hit: Blindness (3s) + Wither I (5s)
# +3 bonus damage at night (DayTime 13000-23000)

# Revoke for re-trigger
advancement revoke @s only evercraft:artifacts/abilities/starless_strike_trigger

# Apply Blindness + Wither to hit target
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s blindness 3 0 false
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s wither 5 0 false

# Night bonus — +3 damage when DayTime is 13000-23000
execute store result score #time ec.var run time query daytime
execute if score #time ec.var matches 13000..23000 at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 3 minecraft:player_attack

# Visual/audio feedback
particle smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 10
particle sculk_soul ~ ~1 ~ 0.3 0.3 0.3 0.02 5
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 0.3 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
