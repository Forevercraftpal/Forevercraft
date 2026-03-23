# Thorns Block — Aegis of the Guardian
# Reflects 3 damage back + grants brief Resistance
advancement revoke @s only evercraft:artifacts/abilities/thorns_block_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 3 minecraft:thorns
effect give @s resistance 3 0 false
execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0.1 8
playsound minecraft:enchant.thorns.hit player @s ~ ~ ~ 1 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
