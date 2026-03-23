# Striker — Per-player per-tick processing
# OPT: Consolidates steps 3-5b (was 6 @a scans, now 1 function call)
# Run as: player with ec.sk_active tag

# === Impact building — Falling ===
# +1 per tick while falling (fall_distance > 3 blocks, scale 10 → 30)
# OPT: Skip NBT read when impact is already at cap (no point accumulating more)
execute if entity @s[tag=!ec.sk_sentinel] unless score @s ec.sk_impact matches 100.. store result score @s ec.sk_fall run data get entity @s fall_distance 10
execute if entity @s[tag=ec.sk_sentinel] unless score @s ec.sk_impact matches 75.. store result score @s ec.sk_fall run data get entity @s fall_distance 10
execute if score @s ec.sk_fall matches 30.. run scoreboard players add @s ec.sk_impact 1

# === Impact cap enforcement ===
execute if entity @s[tag=!ec.sk_sentinel] if score @s ec.sk_impact matches 101.. run scoreboard players set @s ec.sk_impact 100
execute if entity @s[tag=ec.sk_sentinel] if score @s ec.sk_impact matches 76.. run scoreboard players set @s ec.sk_impact 75

# === Sentinel passives (only when shield equipped) ===
execute if entity @s[tag=ec.sk_sentinel] if score @s ec.sk_tier matches ..5 run effect give @s resistance 2 0 true
execute if entity @s[tag=ec.sk_sentinel] if score @s ec.sk_tier matches 6 run effect give @s resistance 2 1 true
execute if entity @s[tag=ec.sk_sentinel] run effect give @s weakness 2 0 true
