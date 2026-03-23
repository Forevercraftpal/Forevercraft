# Admin: Full player progression reset
# Run as the TARGET player (e.g., execute as <player> run function evercraft:admin/strip_player_zero)
# WARNING: This is irreversible!

# === COINS ===
scoreboard players set @s ec.coins 0

# === QUEST PROGRESS ===
scoreboard players set @s ec.quest_id_1 0
scoreboard players set @s ec.quest_id_2 0
scoreboard players set @s ec.quest_id_3 0
scoreboard players set @s ec.quest_id_4 0
scoreboard players set @s ec.quest_id_5 0
scoreboard players set @s ec.quest_id_6 0
scoreboard players set @s ec.quest_prog_1 0
scoreboard players set @s ec.quest_prog_2 0
scoreboard players set @s ec.quest_prog_3 0
scoreboard players set @s ec.quest_prog_4 0
scoreboard players set @s ec.quest_prog_5 0
scoreboard players set @s ec.quest_prog_6 0
scoreboard players set @s ec.quest_done_1 0
scoreboard players set @s ec.quest_done_2 0
scoreboard players set @s ec.quest_done_3 0
scoreboard players set @s ec.quest_done_4 0
scoreboard players set @s ec.quest_done_5 0
scoreboard players set @s ec.quest_done_6 0
scoreboard players set @s ec.daily_quest 0

# === REPUTATION ===
scoreboard players set @s ec.village_rep 0
scoreboard players set @s ec.rep_rank 0

# === ADVANTAGE TREES ===
scoreboard players set @s adv.stat_combat 0
scoreboard players set @s adv.stat_mine 0
scoreboard players set @s adv.stat_fish 0
scoreboard players set @s adv.stat_harvest 0
scoreboard players set @s adv.stat_attack 0
scoreboard players set @s adv.stat_ranged 0
scoreboard players set @s adv.stat_ore 0
scoreboard players set @s adv.stat_quests 0
scoreboard players set @s adv.stat_explore 0
scoreboard players set @s adv.combat 0
scoreboard players set @s adv.mining 0
scoreboard players set @s adv.fishing 0
scoreboard players set @s adv.culinary 0
scoreboard players set @s adv.taskmaster 0
scoreboard players set @s adv.explorer 0

# === DUNGEON STATS ===
scoreboard players set @s ec.dg_floors_today 0
scoreboard players set @s ec.dng_attempts 0

# === SPIRIT ARTIFACT ===
scoreboard players set @s ec.sp_tier 0
scoreboard players set @s ec.sp_mastery 0
scoreboard players set @s ec.sp_kills 0
scoreboard players set @s ec.sp_weapon 0

# === DREAM RATE CONSUMABLE COUNTS ===
scoreboard players set @s ec.crystal_count 0
scoreboard players set @s ec.droppings_count 0
scoreboard players set @s ec.mushroom_count 0
scoreboard players set @s ec.chorus_count 0
scoreboard players set @s ec.dream_ore_count 0

# === REMOVE ALL PERMANENT LUCK MODIFIERS ===
attribute @s luck modifier remove evercraft:crystal_of_dreams_bonus
attribute @s luck modifier remove evercraft:rabbits_dreaming_foot_luck
attribute @s luck modifier remove evercraft:dream_droppings_bonus
attribute @s luck modifier remove evercraft:dream_mushroom_bonus
attribute @s luck modifier remove evercraft:chorus_dreaming_bonus
attribute @s luck modifier remove evercraft:patrons_dream_essence_bonus
attribute @s luck modifier remove evercraft:dreamers_quill_bonus
attribute @s luck modifier remove evercraft:dreamweavers_thread_bonus
attribute @s luck modifier remove evercraft:tome_of_lucid_visions_bonus
attribute @s luck modifier remove evercraft:astral_codex_page_bonus
attribute @s luck modifier remove evercraft:fishermans_dozing_lure_bonus
attribute @s luck modifier remove evercraft:miners_slumbering_geode_bonus
attribute @s luck modifier remove evercraft:harvesters_dreamy_seed_bonus
attribute @s luck modifier remove evercraft:blacksmiths_dreaming_ember_bonus
attribute @s luck modifier remove evercraft:wanderers_dream_map_bonus
attribute @s luck modifier remove evercraft:prospectors_dream_ore_bonus
attribute @s luck modifier remove evercraft:collectors_dream_relic_bonus
attribute @s luck modifier remove evercraft:tillers_dream_petal_bonus
attribute @s luck modifier remove evercraft:dreamdust_crystal
attribute @s luck modifier remove evercraft:journal_ow_surface_luck
attribute @s luck modifier remove evercraft:journal_ow_caves_luck
attribute @s luck modifier remove evercraft:journal_nether_luck
attribute @s luck modifier remove evercraft:journal_end_luck
attribute @s luck modifier remove evercraft:constellation_bonus
attribute @s luck modifier remove evercraft:biome_mastery_dr
attribute @s luck modifier remove evercraft:adv_pres_task2
attribute @s luck modifier remove evercraft:adv_pres_task3
attribute @s luck modifier remove evercraft:inscr_gold_greed
attribute @s luck modifier remove ec_rf_gilded

# === BOSS DR CONSUMABLE MODIFIERS ===
attribute @s luck modifier remove evercraft:boss_dr_1
attribute @s luck modifier remove evercraft:boss_dr_2
attribute @s luck modifier remove evercraft:boss_dr_3
attribute @s luck modifier remove evercraft:boss_dr_4
attribute @s luck modifier remove evercraft:boss_dr_5
attribute @s luck modifier remove evercraft:boss_dr_6
attribute @s luck modifier remove evercraft:boss_dr_7
attribute @s luck modifier remove evercraft:boss_dr_8
attribute @s luck modifier remove evercraft:boss_dr_9
attribute @s luck modifier remove evercraft:boss_dr_10
attribute @s luck modifier remove evercraft:boss_dr_11
attribute @s luck modifier remove evercraft:boss_dr_12
attribute @s luck modifier remove evercraft:boss_dr_13

# === ACHIEVEMENTS ===
scoreboard players set @s ach.total 0
scoreboard players set @s ach.quests_done 0
scoreboard players set @s ach.prospects_done 0

# === GIFT COOLDOWN ===
scoreboard players set @s ec.gift_cd 0
scoreboard players set @s ec.last_gift_time 0

# === COMPANION ===
scoreboard players set @s companion.id 0
scoreboard players set @s companion.level 0

# === CLEAR INVENTORY + EQUIPMENT ===
# clear @s only clears main inventory (slots 0-35) in 1.21.5+, NOT armor/offhand
clear @s
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

# === REVOKE ALL ADVANCEMENTS ===
advancement revoke @s everything

# === FEEDBACK ===
tellraw @s [{text:"[Admin] ",color:"dark_red"},{text:"Your progression has been fully reset to zero.",color:"red",bold:true}]
tellraw @a [{text:"[Admin] ",color:"dark_red"},{selector:"@s"},{text:" has been reset.",color:"gray"}]
playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.3 1.5
