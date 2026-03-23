# Anti-Range — Projectile Hit Detected
# Called as the player who hit the boss with a projectile (arrow, trident, etc.)
# Heals the boss ~4 HP to partially negate ranged damage

# Re-arm the advancement
advancement revoke @s only evercraft:bosses/damage/projectile

# Skip if boss is initializing or fight isn't active
execute unless score #wb_active ec.var matches 1 run return 0
execute if entity @e[tag=wb.boss,tag=wb.initializing] run return 0

# Heal boss: instant_health for living mobs, instant_damage for undead (heals them)
execute as @e[type=!player,tag=wb.boss,limit=1] if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 0 true
execute as @e[type=!player,tag=wb.boss,limit=1] unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 0 true

# Visual feedback — brief particle burst on boss
execute at @e[type=!player,tag=wb.boss,limit=1] run particle minecraft:enchanted_hit ~ ~1 ~ 0.4 0.5 0.4 0.1 8
