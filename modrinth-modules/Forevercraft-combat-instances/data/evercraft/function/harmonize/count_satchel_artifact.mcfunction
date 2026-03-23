# Match satchel temp.artifact against all harmonizable artifacts
# Increments the appropriate harmony counters for @s
# Called per-slot from count_satchel_bag_slots

# === STRENGTH ===
# Strength I
execute if data storage evercraft:satchel {temp:{artifact:"beacon_of_ancients"}} run scoreboard players add @s ec.h_str_1 1
execute if data storage evercraft:satchel {temp:{artifact:"dragons_tear"}} run scoreboard players add @s ec.h_str_1 1
execute if data storage evercraft:satchel {temp:{artifact:"wither_rose_crown"}} run scoreboard players add @s ec.h_str_1 1
# Strength II
execute if data storage evercraft:satchel {temp:{artifact:"ring_warden"}} run scoreboard players add @s ec.h_str_2 1
# Strength III
execute if data storage evercraft:satchel {temp:{artifact:"ender_dragon_scale"}} run scoreboard players add @s ec.h_str_3 1
execute if data storage evercraft:satchel {temp:{artifact:"claudes_gift"}} run scoreboard players add @s ec.h_str_3 1

# === SPEED ===
# Speed I
execute if data storage evercraft:satchel {temp:{artifact:"ring_diamond"}} run scoreboard players add @s ec.h_spd_1 1
execute if data storage evercraft:satchel {temp:{artifact:"travelers_charm"}} run scoreboard players add @s ec.h_spd_1 1
execute if data storage evercraft:satchel {temp:{artifact:"seers_compass"}} run scoreboard players add @s ec.h_spd_1 1
execute if data storage evercraft:satchel {temp:{artifact:"wind_chime"}} run scoreboard players add @s ec.h_spd_1 1
execute if data storage evercraft:satchel {temp:{artifact:"cartographers_lens"}} run scoreboard players add @s ec.h_spd_1 1
execute if data storage evercraft:satchel {temp:{artifact:"temporal_hourglass"}} run scoreboard players add @s ec.h_spd_1 1
execute if data storage evercraft:satchel {temp:{artifact:"beacon_of_ancients"}} run scoreboard players add @s ec.h_spd_1 1
# Speed II
# Speed III
execute if data storage evercraft:satchel {temp:{artifact:"claudes_gift"}} run scoreboard players add @s ec.h_spd_3 1

# === HASTE ===
# Haste I
execute if data storage evercraft:satchel {temp:{artifact:"ring_redstone"}} run scoreboard players add @s ec.h_hst_1 1
execute if data storage evercraft:satchel {temp:{artifact:"stormcatcher_shard"}} run scoreboard players add @s ec.h_hst_1 1
execute if data storage evercraft:satchel {temp:{artifact:"spelunkers_echo"}} run scoreboard players add @s ec.h_hst_1 1
execute if data storage evercraft:satchel {temp:{artifact:"berserker_totem"}} run scoreboard players add @s ec.h_hst_1 1
execute if data storage evercraft:satchel {temp:{artifact:"beacon_of_ancients"}} run scoreboard players add @s ec.h_hst_1 1
# Haste III
execute if data storage evercraft:satchel {temp:{artifact:"claudes_gift"}} run scoreboard players add @s ec.h_hst_3 1
execute if data storage evercraft:satchel {temp:{artifact:"redstone_heart"}} run scoreboard players add @s ec.h_hst_3 1

# === RESISTANCE ===
# Resistance I
execute if data storage evercraft:satchel {temp:{artifact:"iron_talisman"}} run scoreboard players add @s ec.h_res_1 1
execute if data storage evercraft:satchel {temp:{artifact:"soul_protection"}} run scoreboard players add @s ec.h_res_1 1
execute if data storage evercraft:satchel {temp:{artifact:"nether_star_shard"}} run scoreboard players add @s ec.h_res_1 1
execute if data storage evercraft:satchel {temp:{artifact:"heart_of_the_void"}} run scoreboard players add @s ec.h_res_1 1
execute if data storage evercraft:satchel {temp:{artifact:"beacon_of_ancients"}} run scoreboard players add @s ec.h_res_1 1
# Resistance II
execute if data storage evercraft:satchel {temp:{artifact:"ring_nether"}} run scoreboard players add @s ec.h_res_2 1
execute if data storage evercraft:satchel {temp:{artifact:"ring_void"}} run scoreboard players add @s ec.h_res_2 1
execute if data storage evercraft:satchel {temp:{artifact:"temporal_hourglass"}} run scoreboard players add @s ec.h_res_2 1
# Resistance III
execute if data storage evercraft:satchel {temp:{artifact:"netherite_nexus"}} run scoreboard players add @s ec.h_res_3 1

# === JUMP BOOST ===
# Jump Boost I
execute if data storage evercraft:satchel {temp:{artifact:"ring_slime"}} run scoreboard players add @s ec.h_jmp_1 1
execute if data storage evercraft:satchel {temp:{artifact:"beacon_of_ancients"}} run scoreboard players add @s ec.h_jmp_1 1

# === REGENERATION ===
# Regeneration I
execute if data storage evercraft:satchel {temp:{artifact:"healers_salve"}} run scoreboard players add @s ec.h_reg_1 1
execute if data storage evercraft:satchel {temp:{artifact:"nether_star_shard"}} run scoreboard players add @s ec.h_reg_1 1
execute if data storage evercraft:satchel {temp:{artifact:"beacon_of_ancients"}} run scoreboard players add @s ec.h_reg_1 1
