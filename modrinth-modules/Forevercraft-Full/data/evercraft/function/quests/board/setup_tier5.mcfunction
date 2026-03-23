# Setup Tier 5 (Expedition) Quest — Post-selection initialization
# Run as player

scoreboard players set @s ec.quest_prog_5 0
scoreboard players operation @s ec.quest_village = @s ec.current_village

# Reset kill counters for hunt quests
execute if score @s ec.quest_id_5 matches 1 run scoreboard players set @s ec.kills_elder_guardian 0
execute if score @s ec.quest_id_5 matches 10 run scoreboard players set @s ec.kills_breeze 0

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.2
particle totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.1 20

tellraw @s ["",{"text":"[Forevercraft] ","color":"gold"},{"text":"Expedition accepted!","color":"green"}]
