# Zephyr Edge — On Hit Processing
# Handles: Wind Charge consumption (Zephyr Dance), airborne 2x damage

advancement revoke @s only evercraft:spirit/zephyr_edge/on_hit

# === ZEPHYR DANCE CHARGE CONSUMPTION ===
execute if entity @s[tag=ec.sp_zephyr_dance] if score @s ec.sp_charges matches 1.. at @s run function evercraft:spirit/abilities/zephyr_edge/dance_strike

# === AIRBORNE 2X DAMAGE ===
# If player is falling (not on ground), deal extra damage
execute if predicate evercraft:spirit/is_airborne at @s anchored eyes positioned ^ ^ ^2 run damage @e[distance=..3,type=!player,type=!armor_stand,type=!item,type=!marker,limit=1,sort=nearest] 8 minecraft:player_attack by @s

# Kill & progression tracking
scoreboard players add @s ec.sp_kills 1
scoreboard players add @s ec.sp_dodges 1
function evercraft:spirit/progression/track_on_hit
