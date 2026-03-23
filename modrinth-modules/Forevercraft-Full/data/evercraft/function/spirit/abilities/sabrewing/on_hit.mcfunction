# Soulstring — On Hit Processing (Void Echo passive)
# Every hit applies a delayed echo: Wither I for 1 second (mimics delayed damage)
# At spirit tier, also inflict Slowness I briefly

advancement revoke @s only evercraft:spirit/sabrewing/on_hit

# === VOID ECHO — Delayed damage via Wither ===
# Tag the hit entity with ec.sp_echo for visual feedback
# Apply Wither I for 20 ticks (1 second) = ~1 damage as "echo"
execute on target run effect give @s wither 1 0 false

# VFX on hit target — void ripple
execute on target at @s run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 8
execute on target at @s run particle dust{color:[0.2,0.0,0.3],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0.02 5

# SFX — subtle echo
execute on target at @s run playsound minecraft:entity.enderman.hurt player @a ~ ~ ~ 0.3 2.0

# Spirit tier: also apply brief Slowness I
execute if score @s ec.sp_tier matches 7 on target run effect give @s slowness 1 0 false

# === KILL & PROGRESSION TRACKING ===
scoreboard players add @s ec.sp_kills 1
scoreboard players add @s ec.sp_crits 1
function evercraft:spirit/progression/track_on_hit
