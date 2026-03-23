# Hollow Fangs — Per-Tick Processing
# Run as @s at @s when holding spirit weapon ID 1


# === SOUL REND TRACKING ===
# Combo counter is tracked via on-hit advancement (see hollow_fangs/on_hit)
# Every 3rd hit applies Soul Rend — handled in on_hit function

# === STEALTH KILL HEAL ===
# Tracked via kill advancement with invisibility check
# (see hollow_fangs/on_kill)

# === SHADOW STEP ACTIVE ===
# If Shadow Step was used, check for bonus damage window expiry
execute if entity @s[tag=ec.sp_shadow_bonus] run scoreboard players remove @s ec.sp_timer 1
execute if entity @s[tag=ec.sp_shadow_bonus,scores={ec.sp_timer=..0}] run tag @s remove ec.sp_shadow_bonus
execute if entity @s[tag=ec.sp_shadow_bonus,scores={ec.sp_timer=..0}] run title @s actionbar [{"text":"Shadow Step bonus expired","color":"gray"}]

# === THOUSAND CUTS CHANNEL ===
# If channeling Thousand Cuts, handle the channel state
execute if entity @s[tag=ec.sp_thousand_cuts] run function evercraft:spirit/abilities/hollow_fangs/thousand_cuts_tick

# === COMBO VARIETY TIMER ===
# Decrement window; reset type flags when timer expires
execute if score @s ec.sp_cv_timer matches 1.. run scoreboard players remove @s ec.sp_cv_timer 1
execute if score @s ec.sp_cv_timer matches 0 run scoreboard players set @s ec.sp_cv_t1 0
execute if score @s ec.sp_cv_timer matches 0 run scoreboard players set @s ec.sp_cv_t2 0
execute if score @s ec.sp_cv_timer matches 0 run scoreboard players set @s ec.sp_cv_t3 0
