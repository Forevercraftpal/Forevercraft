# Setup Tier 2 (Task) Quest — Post-selection initialization
# Run as player

scoreboard players set @s ec.quest_prog_2 0
scoreboard players operation @s ec.quest_village = @s ec.current_village

# Reset kill counters for hunt quests
execute if score @s ec.quest_id_2 matches 2 run scoreboard players set @s ec.kills_skeleton 0
execute if score @s ec.quest_id_2 matches 5 run scoreboard players set @s ec.kills_creeper 0
execute if score @s ec.quest_id_2 matches 11 run scoreboard players set @s ec.kills_drowned 0
execute if score @s ec.quest_id_2 matches 15 run scoreboard players set @s ec.kills_phantom 0
execute if score @s ec.quest_id_2 matches 23 run scoreboard players set @s ec.kills_endermite 0
execute if score @s ec.quest_id_2 matches 24 run scoreboard players set @s ec.kills_vindicator 0
execute if score @s ec.quest_id_2 matches 29 run scoreboard players set @s ec.kills_piglin 0
execute if score @s ec.quest_id_2 matches 30 run scoreboard players set @s ec.kills_magma_cube 0
execute if score @s ec.quest_id_2 matches 37 run scoreboard players set @s ec.kills_silverfish 0
execute if score @s ec.quest_id_2 matches 38 run scoreboard players set @s ec.kills_hoglin 0
execute if score @s ec.quest_id_2 matches 49 run scoreboard players set @s ec.kills_ghast 0

# Snapshot system quest counters for delta tracking
execute if score @s ec.quest_id_2 matches 16 run scoreboard players operation @s ec.stat_snap_2 = @s ach.forages_done
execute if score @s ec.quest_id_2 matches 17 run scoreboard players operation @s ec.stat_snap_2 = @s ach.prospects_done
execute if score @s ec.quest_id_2 matches 18 run scoreboard players operation @s ec.stat_snap_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 19 run scoreboard players operation @s ec.stat_snap_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 20 run scoreboard players operation @s ec.stat_snap_2 = @s ach.lore_found
execute if score @s ec.quest_id_2 matches 31 run scoreboard players operation @s ec.stat_snap_2 = @s ach.meals_cooked
execute if score @s ec.quest_id_2 matches 32 run scoreboard players operation @s ec.stat_snap_2 = @s ach.prospects_done
execute if score @s ec.quest_id_2 matches 40 run scoreboard players operation @s ec.stat_snap_2 = @s ach.forages_done
execute if score @s ec.quest_id_2 matches 41 run scoreboard players operation @s ec.stat_snap_2 = @s ach.lore_found
execute if score @s ec.quest_id_2 matches 48 run scoreboard players operation @s ec.stat_snap_2 = @s ach.forages_done
execute if score @s ec.quest_id_2 matches 50 run scoreboard players operation @s ec.stat_snap_2 = @s ach.meals_cooked

# Effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.2
particle totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.1 10

tellraw @s ["",{"text":"[Forevercraft] ","color":"gold"},{"text":"Task accepted!","color":"green"}]
