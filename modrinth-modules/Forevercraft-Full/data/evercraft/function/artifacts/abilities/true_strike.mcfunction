# True Strike — Gungnir
# Target gets Glowing + bonus 3 damage
advancement revoke @s only evercraft:artifacts/abilities/true_strike_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s glowing 5 0 false
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 3 evercraft:bonus_strike
execute at @s run particle enchanted_hit ~ ~1 ~ 0.3 0.5 0.3 0.5 10
playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
