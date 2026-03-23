# Void Architect — Fire Homing Projectile
# Summon a shulker bullet (or snowball) that homes toward nearest player

# Fire from boss position toward nearest player
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon snowball ~ ~2 ~ {Tags:["ec.rd_va_proj","ec.rd_proj"],Motion:[0.0d,0.3d,0.0d]}

# Re-aim immediately
execute as @e[tag=ec.rd_va_proj,limit=1,sort=nearest] at @s run function evercraft:raids/boss/void_architect/abilities/aim_projectile

# Sound
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.shulker.shoot hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.8 1.2
