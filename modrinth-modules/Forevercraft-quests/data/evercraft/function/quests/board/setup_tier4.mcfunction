# Setup Tier 4 (Commission) Quest — Post-selection initialization
# Run as player

scoreboard players set @s ec.quest_prog_4 0
scoreboard players operation @s ec.quest_village = @s ec.current_village

# Reset kill counters for hunt quests
execute if score @s ec.quest_id_4 matches 1 run scoreboard players set @s ec.kills_wither_skeleton 0
execute if score @s ec.quest_id_4 matches 4 run scoreboard players set @s ec.kills_pillager 0
execute if score @s ec.quest_id_4 matches 7 run scoreboard players set @s ec.kills_evoker 0
execute if score @s ec.quest_id_4 matches 9 run scoreboard players set @s ec.kills_piglin_brute 0
execute if score @s ec.quest_id_4 matches 12 run scoreboard players set @s ec.kills_ravager 0
execute if score @s ec.quest_id_4 matches 33 run scoreboard players set @s ec.kills_elder_guardian 0
execute if score @s ec.quest_id_4 matches 41 run scoreboard players set @s ec.kills_evoker 0

# Snapshot system quest counters for delta tracking
execute if score @s ec.quest_id_4 matches 13 run scoreboard players operation @s ec.stat_snap_4 = @s ach.boss_kills
execute if score @s ec.quest_id_4 matches 14 run scoreboard players operation @s ec.stat_snap_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 15 run scoreboard players operation @s ec.stat_snap_4 = @s ach.runes_forged
execute if score @s ec.quest_id_4 matches 16 run scoreboard players operation @s ec.stat_snap_4 = @s ach.transmutes_done
execute if score @s ec.quest_id_4 matches 17 run scoreboard players operation @s ec.stat_snap_4 = @s ach.dungeons_done
execute if score @s ec.quest_id_4 matches 18 run scoreboard players operation @s ec.stat_snap_4 = @s ach.lore_sets
execute if score @s ec.quest_id_4 matches 19 run scoreboard players operation @s ec.stat_snap_4 = @s ach.forages_done
execute if score @s ec.quest_id_4 matches 20 run scoreboard players operation @s ec.stat_snap_4 = @s ach.prospects_done
execute if score @s ec.quest_id_4 matches 21 run scoreboard players operation @s ec.stat_snap_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 22 run scoreboard players operation @s ec.stat_snap_4 = @s ach.lore_found
execute if score @s ec.quest_id_4 matches 23 run scoreboard players operation @s ec.stat_snap_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 24 run scoreboard players operation @s ec.stat_snap_4 = @s ach.boss_kills
execute if score @s ec.quest_id_4 matches 26 run scoreboard players operation @s ec.stat_snap_4 = @s ach.dungeons_done
execute if score @s ec.quest_id_4 matches 27 run scoreboard players operation @s ec.stat_snap_4 = @s ach.runes_forged
execute if score @s ec.quest_id_4 matches 29 run scoreboard players operation @s ec.stat_snap_4 = @s ach.transmutes_done
execute if score @s ec.quest_id_4 matches 30 run scoreboard players operation @s ec.stat_snap_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 31 run scoreboard players operation @s ec.stat_snap_4 = @s ach.prospects_done
execute if score @s ec.quest_id_4 matches 32 run scoreboard players operation @s ec.stat_snap_4 = @s ach.lore_sets
execute if score @s ec.quest_id_4 matches 39 run scoreboard players operation @s ec.stat_snap_4 = @s ach.meals_cooked
execute if score @s ec.quest_id_4 matches 42 run scoreboard players operation @s ec.stat_snap_4 = @s ach.runes_forged

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.2
particle totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.1 15

tellraw @s ["",{"text":"[Forevercraft] ","color":"gold"},{"text":"Commission accepted!","color":"green"}]
