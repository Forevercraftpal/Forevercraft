# === CHECK ALL CRAFTFOREVER MILESTONES ===
# Sets ec.claim_cft to the number of unclaimed craftforever milestone stages
scoreboard players set @s ec.claim_cft 0

# c1: Master Chef (ach.meals_cooked)
function evercraft:milestones/craftforever/check_one {id:"c1", score:"ach.meals_cooked", t1:25, t2:75, t3:200, t4:400, t5:750}
# c2: Combat Chef (ck.m_combat)
function evercraft:milestones/craftforever/check_one {id:"c2", score:"ck.m_combat", t1:10, t2:30, t3:60, t4:100, t5:150}
# c3: Mining Chef (ck.m_mining)
function evercraft:milestones/craftforever/check_one {id:"c3", score:"ck.m_mining", t1:10, t2:30, t3:60, t4:100, t5:150}
# c4: Fortune Chef (ck.m_fortune)
function evercraft:milestones/craftforever/check_one {id:"c4", score:"ck.m_fortune", t1:10, t2:30, t3:60, t4:100, t5:150}
# c5: Recipe Hunter (ach.recipes_learned — total unique recipes discovered)
function evercraft:milestones/craftforever/check_one {id:"c5", score:"ach.recipes_learned", t1:10, t2:20, t3:30, t4:35, t5:42}
# c6: Trial Champion (ec.tt_completed)
function evercraft:milestones/craftforever/check_one {id:"c6", score:"ec.tt_completed", t1:10, t2:30, t3:60, t4:100, t5:200}
# c7: Artisan Rank (ec.cf_rank)
function evercraft:milestones/craftforever/check_one {id:"c7", score:"ec.cf_rank", t1:20, t2:40, t3:60, t4:80, t5:100}
# c8: Master Forger (ec.cf_total_forges)
function evercraft:milestones/craftforever/check_one {id:"c8", score:"ec.cf_total_forges", t1:25, t2:75, t3:200, t4:400, t5:750}
# c9: Spirit Toolsmith (ec.st_tools_made) — only 4 stages, t5 unreachable
function evercraft:milestones/craftforever/check_one {id:"c9", score:"ec.st_tools_made", t1:1, t2:3, t3:5, t4:6, t5:999}

# c10: Material Collector (ec.cf_materials — bitfield, count set bits)
# Max 15 unique biome materials, thresholds adjusted to 3/6/9/12/15
scoreboard players operation #ms_bitfield ec.temp = @s ec.cf_materials
function evercraft:milestones/craftforever/count_bits_15
# #ms_bit_count ec.temp now holds the count of unique materials
# Check stages manually against the bit count
execute if score #ms_bit_count ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/craftforever/c10_1=true}] run scoreboard players add @s ec.claim_cft 1
execute if score #ms_bit_count ec.temp matches 6.. unless entity @s[advancements={evercraft:claim/craftforever/c10_2=true}] run scoreboard players add @s ec.claim_cft 1
execute if score #ms_bit_count ec.temp matches 9.. unless entity @s[advancements={evercraft:claim/craftforever/c10_3=true}] run scoreboard players add @s ec.claim_cft 1
execute if score #ms_bit_count ec.temp matches 12.. unless entity @s[advancements={evercraft:claim/craftforever/c10_4=true}] run scoreboard players add @s ec.claim_cft 1
execute if score #ms_bit_count ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/craftforever/c10_5=true}] run scoreboard players add @s ec.claim_cft 1

# c11: Biome Node Hunter (ec.cf_nodes_found — bitfield, count set bits)
scoreboard players operation #ms_bitfield ec.temp = @s ec.cf_nodes_found
function evercraft:milestones/craftforever/count_bits_15
execute if score #ms_bit_count ec.temp matches 3.. unless entity @s[advancements={evercraft:claim/craftforever/c11_1=true}] run scoreboard players add @s ec.claim_cft 1
execute if score #ms_bit_count ec.temp matches 7.. unless entity @s[advancements={evercraft:claim/craftforever/c11_2=true}] run scoreboard players add @s ec.claim_cft 1
execute if score #ms_bit_count ec.temp matches 10.. unless entity @s[advancements={evercraft:claim/craftforever/c11_3=true}] run scoreboard players add @s ec.claim_cft 1
execute if score #ms_bit_count ec.temp matches 13.. unless entity @s[advancements={evercraft:claim/craftforever/c11_4=true}] run scoreboard players add @s ec.claim_cft 1
execute if score #ms_bit_count ec.temp matches 15.. unless entity @s[advancements={evercraft:claim/craftforever/c11_5=true}] run scoreboard players add @s ec.claim_cft 1

# c12: Pantry Hoarder (ec.pantry_stored)
function evercraft:milestones/craftforever/check_one {id:"c12", score:"ec.pantry_stored", t1:50, t2:200, t3:500, t4:1000, t5:2000}

# c13: Mining Master (ec.tt_m_best) — 5 stages at tiers 2/4/6/8/10
function evercraft:milestones/craftforever/check_one {id:"c13", score:"ec.tt_m_best", t1:2, t2:4, t3:6, t4:8, t5:10}
# c14: Harvest Lord (ec.tt_farm_best)
function evercraft:milestones/craftforever/check_one {id:"c14", score:"ec.tt_farm_best", t1:2, t2:4, t3:6, t4:8, t5:10}
# c15: Master Angler (ec.tt_fish_best)
function evercraft:milestones/craftforever/check_one {id:"c15", score:"ec.tt_fish_best", t1:2, t2:4, t3:6, t4:8, t5:10}
# c16: Grand Architect (ec.tt_build_best)
function evercraft:milestones/craftforever/check_one {id:"c16", score:"ec.tt_build_best", t1:2, t2:4, t3:6, t4:8, t5:10}
# c17: Lumberjack Legend (ec.tt_lumb_best)
function evercraft:milestones/craftforever/check_one {id:"c17", score:"ec.tt_lumb_best", t1:2, t2:4, t3:6, t4:8, t5:10}
# c18: Artisan Supreme (ec.tt_art_best)
function evercraft:milestones/craftforever/check_one {id:"c18", score:"ec.tt_art_best", t1:2, t2:4, t3:6, t4:8, t5:10}

# c19: Grand Master (ec.tt_mastery — count of categories with best=10)
function evercraft:milestones/craftforever/check_one {id:"c19", score:"ec.tt_mastery", t1:1, t2:2, t3:4, t4:5, t5:6}
# c20: Speed Demon (ec.tt_speed_clear — total speed clears)
function evercraft:milestones/craftforever/check_one {id:"c20", score:"ec.tt_speed_clear", t1:1, t2:5, t3:15, t4:30, t5:60}
