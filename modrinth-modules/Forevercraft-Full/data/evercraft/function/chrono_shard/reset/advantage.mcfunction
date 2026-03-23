# Chrono Shard — Reset Advantage Trees
# Zeros all tree levels, stats, prestiges, synergies, tokens, challenges, cosmetics

# === Skill Levels (14 trees) ===
scoreboard players set @s adv.agility 0
scoreboard players set @s adv.dexterity 0
scoreboard players set @s adv.evasion 0
scoreboard players set @s adv.stealth 0
scoreboard players set @s adv.vitality 0
scoreboard players set @s adv.taskmaster 0
scoreboard players set @s adv.beastmaster 0
scoreboard players set @s adv.victorian 0
scoreboard players set @s adv.fishing 0
scoreboard players set @s adv.mining 0
scoreboard players set @s adv.gathering 0
scoreboard players set @s adv.blacksmith 0
scoreboard players set @s adv.explorer 0
scoreboard players set @s adv.culinary 0

# === Stat Counters ===
scoreboard players set @s adv.stat_walk 0
scoreboard players set @s adv.stat_place 0
scoreboard players set @s adv.stat_hit 0
scoreboard players set @s adv.stat_crouch 0
scoreboard players set @s adv.stat_food 0
scoreboard players set @s adv.stat_quests 0
scoreboard players set @s adv.stat_pets100 0
scoreboard players set @s adv.stat_mobs 0
scoreboard players set @s adv.stat_fish 0
scoreboard players set @s adv.stat_mine 0
scoreboard players set @s adv.stat_harvest 0
scoreboard players set @s adv.stat_smelt 0
scoreboard players set @s adv.stat_struct 0
scoreboard players set @s adv.stat_trades 0
scoreboard players set @s adv.stat_cook 0
scoreboard players set @s adv.stat_attack 0
scoreboard players set @s adv.stat_ranged 0
scoreboard players set @s adv.stat_ore 0

# === Stat Baselines (reset to current vanilla stats so delta starts from 0) ===
execute store result score @s adv.base_walk run scoreboard players get @s adv.walk_cm
execute store result score @s adv.base_crouch run scoreboard players get @s adv.crouch_cm
execute store result score @s adv.base_fish run scoreboard players get @s adv.fish_ct
execute store result score @s adv.base_mobs run scoreboard players get @s adv.mob_kills
execute store result score @s adv.base_mine run scoreboard players get @s adv.stat_mine
execute store result score @s adv.base_ore run scoreboard players get @s adv.stat_ore
execute store result score @s adv.base_smelt run scoreboard players get @s adv.furnace_ct
execute store result score @s adv.base_dmg run scoreboard players get @s adv.stat_dmg

# === Prestige Levels (14 trees + total) ===
scoreboard players set @s adv.pres_agil 0
scoreboard players set @s adv.pres_dext 0
scoreboard players set @s adv.pres_evas 0
scoreboard players set @s adv.pres_stea 0
scoreboard players set @s adv.pres_vita 0
scoreboard players set @s adv.pres_task 0
scoreboard players set @s adv.pres_beas 0
scoreboard players set @s adv.pres_vict 0
scoreboard players set @s adv.pres_fish 0
scoreboard players set @s adv.pres_mine 0
scoreboard players set @s adv.pres_gath 0
scoreboard players set @s adv.pres_blac 0
scoreboard players set @s adv.pres_expl 0
scoreboard players set @s adv.pres_culi 0
scoreboard players set @s adv.pres_total 0

# === Synergy Scores ===
scoreboard players set @s adv.syn_combat 0
scoreboard players set @s adv.syn_gather 0
scoreboard players set @s adv.syn_utility 0
scoreboard players set @s adv.syn_support 0
scoreboard players set @s adv.syn_trance 0
scoreboard players set @s adv.syn_shadow 0
scoreboard players set @s adv.syn_shad_cd 0

# === Tokens ===
scoreboard players set @s adv.tokens 0
scoreboard players set @s adv.tok_earned 0
scoreboard players set @s adv.tok_spent 0

# === Challenges ===
scoreboard players set @s adv.chal_id 0
scoreboard players set @s adv.chal_prog 0
scoreboard players set @s adv.chal_tree 0
scoreboard players set @s adv.weekly_done 0

# === Cosmetics ===
scoreboard players set @s adv.cosm_unlock 0
scoreboard players set @s adv.cosm_active 0
scoreboard players set @s adv.cosm_tree 0
scoreboard players set @s adv.cc_particles 0
scoreboard players set @s adv.cc_titles 0
scoreboard players set @s adv.cc_part1 0
scoreboard players set @s adv.cc_part2 0
scoreboard players set @s adv.cc_title 0

# === Prestige Ability States ===
scoreboard players set @s adv.pa_agil1 0
scoreboard players set @s adv.pa_agil2 0
scoreboard players set @s adv.pa_agil3 0
scoreboard players set @s adv.pa_dex1 0
scoreboard players set @s adv.pa_task1 0
scoreboard players set @s adv.pa_task2 0
scoreboard players set @s adv.pa_task3 0
scoreboard players set @s adv.pa_beas1 0
scoreboard players set @s adv.pa_beas2 0
scoreboard players set @s adv.pa_beas3 0
scoreboard players set @s adv.pa_vict2 0
scoreboard players set @s adv.pa_vict3 0
scoreboard players set @s adv.pa_fish1 0
scoreboard players set @s adv.pa_fish2 0
scoreboard players set @s adv.pa_fish3 0
scoreboard players set @s adv.pa_mine2 0
scoreboard players set @s adv.pa_mine3 0
scoreboard players set @s adv.pa_gath1 0
scoreboard players set @s adv.pa_gath2 0
scoreboard players set @s adv.pa_gath3 0
scoreboard players set @s adv.pa_blac1 0
scoreboard players set @s adv.pa_blac2 0
scoreboard players set @s adv.pa_blac3 0
scoreboard players set @s adv.pa_expl1 0
scoreboard players set @s adv.pa_expl2 0
scoreboard players set @s adv.pa_expl3 0
scoreboard players set @s adv.pa_culi1 0
scoreboard players set @s adv.pa_culi2 0
scoreboard players set @s adv.pa_culi3 0

# Remove cosmetic team membership
team leave @s

# Remove advantage tree attribute modifiers
function evercraft:advantage/effects/reapply_all

tellraw @s [{"text":"\u2726 ","color":"dark_aqua"},{"text":"Advantage Trees","color":"aqua"},{"text":" have been reset to zero.","color":"white"}]
