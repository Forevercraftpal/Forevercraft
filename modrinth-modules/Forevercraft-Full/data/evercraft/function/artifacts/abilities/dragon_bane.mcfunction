# Dragon Bane - Massive bonus damage vs Ender Dragon
# Deals 10 extra damage to the dragon

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/dragon_bane_trigger

# Deal massive bonus damage to the dragon
execute at @s run damage @e[type=ender_dragon,distance=..20,limit=1] 10 minecraft:player_attack by @s

# Visual/audio feedback
execute at @s run particle dragon_breath ~ ~1 ~ 1 1 1 0.1 30
playsound minecraft:entity.ender_dragon.hurt player @a[distance=..50] ~ ~ ~ 1 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
