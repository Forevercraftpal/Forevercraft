# Summer Effects — 1s tick
# Golden ambient particles + mob aggression buffs

# Golden sun motes
execute as @a at @s run particle dust{color:[1.0,0.85,0.3],scale:0.6} ~ ~2 ~ 10 3 10 0.01 2

# Heat shimmer (trial spawner detection has a nice warm glow)
execute as @a at @s run particle trial_spawner_detection ~ ~1 ~ 6 2 6 0.01 1

# === Mob Aggression Buffs (every 5s) ===
scoreboard players add #summer_buff_cd ec.var 1
execute if score #summer_buff_cd ec.var matches 5.. run function evercraft:seasons/effects/summer_mob_buffs
execute if score #summer_buff_cd ec.var matches 5.. run scoreboard players set #summer_buff_cd ec.var 0

# === Heat Scorch Check (every 30s, daytime only) ===
scoreboard players add #summer_heat_cd ec.var 1
execute if score #summer_heat_cd ec.var matches 30.. if score #visual_time ec.var matches ..12000 run execute as @a at @s run function evercraft:seasons/effects/summer_heat_check
execute if score #summer_heat_cd ec.var matches 30.. run scoreboard players set #summer_heat_cd ec.var 0
