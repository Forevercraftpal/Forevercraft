# Root Strike — Living Vines Pickaxe
# On hit: Entangle target — extreme Slowness + Poison
advancement revoke @s only evercraft:artifacts/abilities/root_strike_trigger
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 3 3 false
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s poison 4 0 false
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 8
playsound minecraft:block.vine.place player @s ~ ~ ~ 0.8 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
