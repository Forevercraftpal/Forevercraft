# Hollow Fangs — On Hit Processing
# Handles Soul Rend passive (every 3rd hit) and Shadow Step bonus damage

advancement revoke @s only evercraft:spirit/hollow_fangs/on_hit

# === SOUL REND (every 3rd consecutive hit) ===
# Increment combo counter
scoreboard players add @s ec.sp_combo 1

# Check for 3rd hit
execute if score @s ec.sp_combo matches 3.. run function evercraft:spirit/abilities/hollow_fangs/soul_rend

# === SHADOW STEP BONUS (3x damage on next hit after teleport) ===
execute if entity @s[tag=ec.sp_shadow_bonus] run function evercraft:spirit/abilities/hollow_fangs/shadow_bonus_hit

# === KILL & PROGRESSION TRACKING ===
scoreboard players add @s ec.sp_kills 1
# Stealth kill tracking (hit while invisible)
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run scoreboard players add @s ec.sp_stealth_kills 1
# Perfect stealth kill: invisible + no damage taken (damage_taken starts at 0, increments on any hit)
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if score @s ec.sp_damage_taken matches 0 run scoreboard players set @s ec.sp_perfect_stealth 1

# Combo variety tracking: 3 different mob types in 200 ticks (10 seconds)
# Reset window timer each kill, track type flags via on_target type checks
scoreboard players set @s ec.sp_cv_timer 200
execute on target if entity @s[type=minecraft:zombie] run scoreboard players set @s ec.sp_cv_t1 1
execute on target if entity @s[type=minecraft:skeleton] run scoreboard players set @s ec.sp_cv_t2 1
execute on target unless entity @s[type=minecraft:zombie] unless entity @s[type=minecraft:skeleton] run scoreboard players set @s ec.sp_cv_t3 1
execute if score @s ec.sp_cv_t1 matches 1 if score @s ec.sp_cv_t2 matches 1 if score @s ec.sp_cv_t3 matches 1 run scoreboard players set @s ec.sp_combo_variety 3

function evercraft:spirit/progression/track_on_hit
