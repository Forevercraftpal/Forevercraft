# Chrono Shard — Reset Personal Milestones
# Zeros all achievement/milestone tracking scores

# === Companion tracking ===
scoreboard players set @s ach.comp_owned 0
scoreboard players set @s ach.comp_bonded 0
scoreboard players set @s ach.comp_devoted 0
scoreboard players set @s ach.comp_soulbound 0
scoreboard players set @s ach.comp_eternal 0
scoreboard players set @s ach.comp_feeds 0
scoreboard players set @s ach.comp_interacts 0
scoreboard players set @s ach.comp_abilities 0

# === Quest tracking ===
scoreboard players set @s ach.quests_done 0
scoreboard players set @s ach.quest_xp 0
scoreboard players set @s ach.quest_rep 0
scoreboard players set @s ach.villages_quested 0

# === Crate tracking ===
scoreboard players set @s ach.crates_opened 0
scoreboard players set @s ach.crates_fishing 0
scoreboard players set @s ach.crates_harvest 0
scoreboard players set @s ach.crates_mining 0
scoreboard players set @s ach.crates_structure 0
scoreboard players set @s ach.crates_mob 0

# === Combat tracking ===
scoreboard players set @s ach.patron_kills 0
scoreboard players set @s ach.weapon_abilities 0

# === Advantage tree tracking ===
scoreboard players set @s ach.trees_unlocked 0
scoreboard players set @s ach.total_levels 0
scoreboard players set @s ach.surge_triggers 0
scoreboard players set @s ach.dodge_count 0

# === Fishing tracking ===
scoreboard players set @s ach.fish_caught 0
scoreboard players set @s ach.fish_treasure 0

# === Mining/Harvest tracking ===
scoreboard players set @s ach.blocks_mined 0
scoreboard players set @s ach.crops_harvested 0

# === Exploration tracking ===
scoreboard players set @s ach.biomes_visited 0
scoreboard players set @s ach.structures_found 0

# === Armor set tracking ===
scoreboard players set @s ach.sets_equipped 0
scoreboard players set @s ach.set_bonuses 0

# === Statistics tracking ===
scoreboard players set @s ach.food_eaten 0
scoreboard players set @s ach.blocks_placed 0
scoreboard players set @s ach.no_sleep_days 0
scoreboard players set @s ach.surge_crates 0
scoreboard players set @s ach.night_ticks 0

# === Boss tracking ===
scoreboard players set @s ach.boss_kills 0
scoreboard players set @s ach.boss_unique 0

# === Dungeon tracking ===
scoreboard players set @s ach.dungeons_done 0
scoreboard players set @s ach.dungeon_no_death 0

# === Cooking tracking ===
scoreboard players set @s ach.meals_cooked 0
scoreboard players set @s ach.recipes_learned 0

# === Lore tracking ===
scoreboard players set @s ach.lore_found 0
scoreboard players set @s ach.lore_sets 0

# === Party tracking ===
scoreboard players set @s ach.parties_formed 0
scoreboard players set @s ach.combos_triggered 0

# === Housing tracking ===
scoreboard players set @s ach.housing_tier 0

# === Journal tracking ===
scoreboard players set @s ach.journal_entries 0

# === Satchel tracking ===
scoreboard players set @s ach.satchel_artifacts 0

# === Glyphforge tracking ===
scoreboard players set @s ach.runes_forged 0

# === Transmute tracking ===
scoreboard players set @s ach.transmutes_done 0

# === Forage & Prospect tracking ===
scoreboard players set @s ach.forages_done 0
scoreboard players set @s ach.prospects_done 0

# === Encounter tracking ===
scoreboard players set @s ach.encounters_done 0

# === Armored Elytra tracking ===
scoreboard players set @s ach.elytra_merges 0

# === Village upgrade tracking ===
scoreboard players set @s ach.village_upgrades 0

# === Moon tracking ===
scoreboard players set @s ach.moons_seen 0

# === World event tracking ===
scoreboard players set @s ach.cal_meteor 0
scoreboard players set @s ach.cal_rift 0
scoreboard players set @s ach.cal_prosperity 0
scoreboard players set @s ach.we_starfall 0
scoreboard players set @s ach.we_dreaming 0
scoreboard players set @s ach.we_abyssal 0
scoreboard players set @s ach.we_aurora 0
scoreboard players set @s ach.we_rift_echo 0
scoreboard players set @s ach.rift_kills_event 0
scoreboard players set @s ach.fallen_stars 0
scoreboard players set @s ach.meteor_ores_event 0

# === Prestige scores ===
scoreboard players set @s ach.prestige_combat 0
scoreboard players set @s ach.prestige_gathering 0
scoreboard players set @s ach.prestige_companions 0
scoreboard players set @s ach.prestige_exploration 0
scoreboard players set @s ach.prestige_collection 0
scoreboard players set @s ach.prestige_growth 0

# === Total achievements ===
scoreboard players set @s ach.total 0

# === Reset baselines to current vanilla stat values ===
execute store result score @s ach.base_play run scoreboard players get @s ach.play_ticks
execute store result score @s ach.base_walk run scoreboard players get @s ach.walk_cm
execute store result score @s ach.base_jump run scoreboard players get @s ach.jumps
execute store result score @s ach.base_sprint run scoreboard players get @s ach.sprint_cm
execute store result score @s ach.base_trade run scoreboard players get @s ach.trades_done
execute store result score @s ach.base_sleep run scoreboard players get @s ach.sleeps
execute store result score @s ach.base_chest run scoreboard players get @s ach.chests_opened
execute store result score @s ach.base_swim run scoreboard players get @s ach.swim_cm
execute store result score @s ach.base_fall run scoreboard players get @s ach.fall_cm
execute store result score @s ach.base_flint run scoreboard players get @s ach.flint_used
execute store result score @s ach.base_map run scoreboard players get @s ach.maps_crafted
execute store result score @s ach.base_brew run scoreboard players get @s ach.brew_count
execute store result score @s ach.base_ench run scoreboard players get @s ach.enchant_count

tellraw @s [{"text":"\u2726 ","color":"dark_aqua"},{"text":"Personal Milestones","color":"white"},{"text":" have been reset to zero.","color":"white"}]
