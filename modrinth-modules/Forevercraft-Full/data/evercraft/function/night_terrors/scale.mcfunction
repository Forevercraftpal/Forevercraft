# Night Terrors — Scale terror stats based on Dream Rate
# Run as player with ec.temp already set to DR x10

# Base HP = 100 (5x zombie). Scale by DR range.
# DR 30-34: 1.0x (100 HP), DR 35-39: 1.5x (150), DR 40-44: 2.0x (200), DR 45-50: 3.0x (300)

# Health multiplier (base mob ~20hp, so we need +4.0/+6.5/+9.0/+14.0 multiplied_total)
execute if score @s ec.temp matches 300..349 as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s max_health modifier add evercraft:night_terror/scale 4.0 add_multiplied_total
execute if score @s ec.temp matches 350..399 as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s max_health modifier add evercraft:night_terror/scale 6.5 add_multiplied_total
execute if score @s ec.temp matches 400..449 as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s max_health modifier add evercraft:night_terror/scale 9.0 add_multiplied_total
execute if score @s ec.temp matches 450.. as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s max_health modifier add evercraft:night_terror/scale 14.0 add_multiplied_total

# Damage multiplier
execute if score @s ec.temp matches 300..349 as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s attack_damage modifier add evercraft:night_terror/scale 1.0 add_multiplied_total
execute if score @s ec.temp matches 350..399 as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s attack_damage modifier add evercraft:night_terror/scale 1.5 add_multiplied_total
execute if score @s ec.temp matches 400..449 as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s attack_damage modifier add evercraft:night_terror/scale 2.0 add_multiplied_total
execute if score @s ec.temp matches 450.. as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s attack_damage modifier add evercraft:night_terror/scale 3.0 add_multiplied_total

# Armor and knockback resistance for all terrors
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s armor modifier add evercraft:night_terror/scale 10 add_value
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] run attribute @s knockback_resistance modifier add evercraft:night_terror/scale 0.5 add_value

# Heal to new max health (instant effects + storage backup)
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] run execute store result storage evercraft:night_terrors max_hp float 1 run attribute @s max_health get
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] run data modify entity @s Health set from storage evercraft:night_terrors max_hp

# Store DR tier for loot (1=ornate, 2=exquisite, 3=exq+mythical, 4=mythical)
scoreboard players set @s ec.nt_ability_cd 10
