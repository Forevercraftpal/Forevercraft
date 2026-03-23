# Journal — Refresh Overview Descriptions
# Stores counts to storage, then calls macro to update text
# Run as the player

# Store counts to storage
execute store result storage evercraft:journal_gui biome_count int 1.0 run scoreboard players get @s jn.biome_count
execute store result storage evercraft:journal_gui struct_count int 1.0 run scoreboard players get @s jn.struct_count
execute store result storage evercraft:journal_gui village_count int 1.0 run scoreboard players get @s jn.village_count
execute store result storage evercraft:journal_gui secret_count int 1.0 run scoreboard players get @s jn.secret_count

# Count region completions
scoreboard players set #jn_region_total jn.temp 0
execute if score @s jn.region_ow matches 1 run scoreboard players add #jn_region_total jn.temp 1
execute if score @s jn.region_cave matches 1 run scoreboard players add #jn_region_total jn.temp 1
execute if score @s jn.region_neth matches 1 run scoreboard players add #jn_region_total jn.temp 1
execute if score @s jn.region_end matches 1 run scoreboard players add #jn_region_total jn.temp 1
execute store result storage evercraft:journal_gui region_count int 1.0 run scoreboard players get #jn_region_total jn.temp

# Count biome affinities (biomes with mastery level 1+, i.e. 1800+ seconds)
scoreboard players set #jn_affinity_total jn.temp 0
execute if score @s ec.bm0 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm1 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm2 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm3 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm4 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm5 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm6 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm7 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm8 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm9 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm10 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm11 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm12 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm13 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm14 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm15 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm16 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm17 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm18 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm19 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm20 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm21 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm22 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm23 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute if score @s ec.bm24 matches 1800.. run scoreboard players add #jn_affinity_total jn.temp 1
execute store result storage evercraft:journal_gui affinity_count int 1.0 run scoreboard players get #jn_affinity_total jn.temp

# Count completed milestones
scoreboard players set #jn_milestone_total jn.temp 0
execute if score #rm_done_1 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_3 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_5 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_6 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_7 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_8 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_9 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_10 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_11 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_12 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_13 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_14 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_15 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_16 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_17 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_18 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_19 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_20 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_21 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_22 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_23 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_24 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_25 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_26 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_27 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_28 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_29 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_30 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_31 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_32 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_33 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute if score #rm_done_34 ec.var matches 1 run scoreboard players add #jn_milestone_total jn.temp 1
execute store result storage evercraft:journal_gui milestone_count int 1.0 run scoreboard players get #jn_milestone_total jn.temp

# Get active pet memory count (ec.companion_mem is set by get_count)
execute store result storage evercraft:journal_gui memory_count int 1.0 run scoreboard players get @s ec.companion_mem

# Update displays via macro
function evercraft:codex/hub/journal/refresh_overview_inner with storage evercraft:journal_gui
