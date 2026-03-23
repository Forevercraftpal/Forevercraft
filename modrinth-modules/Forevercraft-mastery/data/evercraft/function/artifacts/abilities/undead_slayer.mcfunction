# Undead Slayer - Bonus damage vs undead
# Deals 4 extra damage to undead mobs

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/undead_slayer_trigger

# Deal bonus damage to the undead target
execute at @s as @e[type=#minecraft:undead,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 4 minecraft:player_attack by @s

# Visual/audio feedback
execute at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0.5 20
playsound minecraft:entity.zombie.hurt player @s ~ ~ ~ 0.8 0.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
