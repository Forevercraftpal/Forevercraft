# Soul Fire — Soulflame
# Sets target on fire + applies Weakness (soul drain)
advancement revoke @s only evercraft:artifacts/abilities/soul_fire_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Fire:100s}
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s weakness 5 0 false
execute at @s run particle soul_fire_flame ~ ~1 ~ 0.4 0.5 0.4 0.02 15
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 0.5 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
