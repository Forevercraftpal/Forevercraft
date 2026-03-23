# Hollow Fangs — Soul Rend (every 3rd hit)
# Target takes +25% damage for 5 seconds (simulated via Weakness on them + our damage boost)
# Implementation: apply Weakness I to target for 5 seconds (reduces their effective defense)
# Spirit tier: 8 seconds duration

# Reset combo
scoreboard players set @s ec.sp_combo 0

# Apply Soul Rend to last hurt entity (Weakness I = reduced attack, we use damage_boost on self)
# Since we can't easily apply +25% damage taken to a specific mob via vanilla,
# use a combination: Glowing (visual indicator) + tag for 25% bonus tracking
# Practical approach: apply Weakness to them (reduces their damage to us) + bonus damage from us

# Apply Glowing + tag to nearest recently-hurt entity
execute anchored eyes positioned ^ ^ ^2 as @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,limit=1,sort=nearest] run function evercraft:spirit/abilities/hollow_fangs/apply_soul_rend

# VFX
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.5 2.0
particle soul ~ ~1 ~ 0.3 0.3 0.3 0.05 8
