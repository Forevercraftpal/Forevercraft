# Thornmaw — Per-Tick Processing (Beastlord)
# Run as @s at @s when holding spirit weapon ID 6
# Passives: Pet stat doubling handled by companion handler
# Prey Mark (25% chance per pet hit to mark target) — tracked via pet on_hit advancement

# === WILD SUMMON — Beast Timer ===
# Decrement beast timer if active
execute if entity @s[tag=ec.sp_beast_active] run scoreboard players remove @s ec.sp_timer 1

# Kill beasts when timer expires
execute if entity @s[tag=ec.sp_beast_active,scores={ec.sp_timer=..0}] run function evercraft:spirit/abilities/whispering_spear/beast_expire

# Beast VFX (every 10 ticks while active)
execute if entity @s[tag=ec.sp_beast_active] store result score #ws_mod ec.temp run scoreboard players get @s ec.sp_timer
execute if entity @s[tag=ec.sp_beast_active] run scoreboard players operation #ws_mod ec.temp %= #10 ec.const
execute if entity @s[tag=ec.sp_beast_active] if score #ws_mod ec.temp matches 0 as @e[tag=ec.sp_beast] at @s run particle soul ~ ~0.5 ~ 0.3 0.3 0.3 0.02 3

# === PRIMAL FUSION TIMER ===
execute if entity @s[tag=ec.sp_fused] run scoreboard players remove @s ec.sp_state 1

# Primal Fusion expire
execute if entity @s[tag=ec.sp_fused,scores={ec.sp_state=..0}] run function evercraft:spirit/abilities/whispering_spear/fusion_expire

# Fusion VFX (every 20 ticks)
execute if entity @s[tag=ec.sp_fused] store result score #ws_mod2 ec.temp run scoreboard players get @s ec.sp_state
execute if entity @s[tag=ec.sp_fused] run scoreboard players operation #ws_mod2 ec.temp %= #20 ec.const
execute if entity @s[tag=ec.sp_fused] if score #ws_mod2 ec.temp matches 0 run particle soul_fire_flame ~ ~1 ~ 0.4 0.6 0.4 0.03 8
