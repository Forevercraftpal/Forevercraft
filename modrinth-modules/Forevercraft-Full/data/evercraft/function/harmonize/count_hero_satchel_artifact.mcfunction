# Match hero satchel temp.artifact against harmonizable boss artifacts
# Increments the appropriate harmony counters for @s
# Called per-slot from count_hero_satchel_bag_slots

# === STRENGTH I ===
execute if data storage evercraft:hero_satchel {temp:{artifact:"infernal_heart"}} run scoreboard players add @s ec.h_str_1 1
execute if data storage evercraft:hero_satchel {temp:{artifact:"soulkeepers_ember"}} run scoreboard players add @s ec.h_str_1 1

# === SPEED I ===
execute if data storage evercraft:hero_satchel {temp:{artifact:"nightmare_fragment"}} run scoreboard players add @s ec.h_spd_1 1
execute if data storage evercraft:hero_satchel {temp:{artifact:"architects_design"}} run scoreboard players add @s ec.h_spd_1 1

# === SPEED II ===
execute if data storage evercraft:hero_satchel {temp:{artifact:"thunderstrike_core"}} run scoreboard players add @s ec.h_spd_2 1

# === RESISTANCE I ===
execute if data storage evercraft:hero_satchel {temp:{artifact:"thunderstrike_core"}} run scoreboard players add @s ec.h_res_1 1

# === RESISTANCE II ===
execute if data storage evercraft:hero_satchel {temp:{artifact:"earthshaker_core"}} run scoreboard players add @s ec.h_res_2 1

# === REGENERATION I ===
execute if data storage evercraft:hero_satchel {temp:{artifact:"thornheart_bloom"}} if block ~ ~-1 ~ #minecraft:dirt run scoreboard players add @s ec.h_reg_1 1
