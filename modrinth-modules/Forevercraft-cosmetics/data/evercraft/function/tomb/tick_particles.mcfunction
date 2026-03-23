# Tomb System — Particle Effects by Phase
# @s = grave marker, at grave position
# #tomb_remaining ec.temp = ticks remaining

# === SPAWNING PHASE (first 6 seconds = remaining > 71880) ===
execute if score #tomb_remaining ec.temp matches 71880.. run particle minecraft:sculk_soul ~ ~0.5 ~ 0.3 0.5 0.3 0.02 8
execute if score #tomb_remaining ec.temp matches 71880.. run particle minecraft:soul_fire_flame ~ ~0.8 ~ 0.2 0.3 0.2 0.01 4
execute if score #tomb_remaining ec.temp matches 71880.. run particle dust{color:[0.2,0.6,0.9],scale:1.0} ~ ~0.1 ~ 0.4 0.0 0.4 0 6
execute if score #tomb_remaining ec.temp matches 71880.. run return 0

# === WARNING PHASE (last 5 minutes = remaining < 7200) ===
execute if score #tomb_remaining ec.temp matches ..7200 run particle dust{color:[0.9,0.3,0.1],scale:0.8} ~ ~0.5 ~ 0.2 0.4 0.2 0 3
execute if score #tomb_remaining ec.temp matches ..7200 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 4
execute if score #tomb_remaining ec.temp matches ..7200 run particle minecraft:small_flame ~ ~0.3 ~ 0.15 0.2 0.15 0.01 2

# === FADING PHASE (last 1 minute = remaining < 1200) ===
# Sword flicker — Glowing toggles (even/odd 10-tick cycles)
execute if score #tomb_remaining ec.temp matches ..1200 store result score #tomb_flicker ec.temp run time query gametime
execute if score #tomb_remaining ec.temp matches ..1200 run scoreboard players operation #tomb_flicker ec.temp %= #20 ec.const
execute if score #tomb_remaining ec.temp matches ..1200 if score #tomb_flicker ec.temp matches ..9 as @e[type=item_display,tag=ec.tomb_sword,distance=..1,limit=1] run data merge entity @s {Glowing:1b}
execute if score #tomb_remaining ec.temp matches ..1200 if score #tomb_flicker ec.temp matches 10.. as @e[type=item_display,tag=ec.tomb_sword,distance=..1,limit=1] run data merge entity @s {Glowing:0b}
# Scattered, desperate particles
execute if score #tomb_remaining ec.temp matches ..1200 run particle minecraft:sculk_soul ~ ~0.5 ~ 0.5 0.5 0.5 0.03 5
execute if score #tomb_remaining ec.temp matches ..1200 run particle dust{color:[0.8,0.1,0.1],scale:0.6} ~ ~0.3 ~ 0.4 0.3 0.4 0 4
execute if score #tomb_remaining ec.temp matches ..1200 run return 0

# Warning phase already handled above, return if in warning
execute if score #tomb_remaining ec.temp matches ..7200 run return 0

# === IDLE/AMBIENT PHASE (bulk of lifetime) ===
# Soul wisps orbiting the sword
particle minecraft:soul_fire_flame ~ ~0.6 ~ 0.15 0.2 0.15 0.005 2
particle minecraft:sculk_soul ~ ~0.6 ~ 0.15 0.3 0.15 0.01 1

# Gentle pulse every ~2 seconds (every 4 calls of this 10-tick function)
execute store result score #tomb_pulse ec.temp run time query gametime
scoreboard players operation #tomb_pulse ec.temp %= #60 ec.const
execute if score #tomb_pulse ec.temp matches ..9 run particle minecraft:end_rod ~ ~0.8 ~ 0.1 0.4 0.1 0.005 3
