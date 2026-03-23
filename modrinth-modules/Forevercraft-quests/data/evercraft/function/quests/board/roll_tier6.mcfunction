# Roll a random Tier 6 (Heroic) quest — 30 quests available
execute store result score @s ec.quest_id_6 run random value 1..30

# Re-roll nether quests (1=Wither Slayer, 5=Master Builder, 9=Nether Domination) if no nether access
execute if score @s ec.quest_id_6 matches 1 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier6
execute if score @s ec.quest_id_6 matches 5 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier6
execute if score @s ec.quest_id_6 matches 9 unless predicate evercraft:quests/has_entered_nether run return run function evercraft:quests/board/roll_tier6
# Re-roll end quests (2=Dragon Slayer, 10=Void Walker) if no end access
execute if score @s ec.quest_id_6 matches 2 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier6
execute if score @s ec.quest_id_6 matches 10 unless predicate evercraft:quests/has_entered_end run return run function evercraft:quests/board/roll_tier6

execute if score @s ec.quest_id_6 matches 1 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Wither Slayer",color:"light_purple"},{text:" \u2014 Defeat the Wither",color:"gray"}]
execute if score @s ec.quest_id_6 matches 2 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Dragon Slayer",color:"light_purple"},{text:" \u2014 Defeat the Ender Dragon",color:"gray"}]
execute if score @s ec.quest_id_6 matches 3 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Warden Confrontation",color:"light_purple"},{text:" \u2014 Defeat the Warden",color:"gray"}]
execute if score @s ec.quest_id_6 matches 4 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"The Grand Harvest",color:"light_purple"},{text:" \u2014 Gather 10 of Every Crop",color:"gray"}]
execute if score @s ec.quest_id_6 matches 5 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Master Builder",color:"light_purple"},{text:" \u2014 Craft 8 Netherite Ingots",color:"gray"}]
execute if score @s ec.quest_id_6 matches 6 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Ultimate Explorer",color:"light_purple"},{text:" \u2014 Visit 12 Biomes",color:"gray"}]
execute if score @s ec.quest_id_6 matches 7 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Raid Champion",color:"light_purple"},{text:" \u2014 Complete a Raid",color:"gray"}]
execute if score @s ec.quest_id_6 matches 8 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Treasure Fleet",color:"light_purple"},{text:" \u2014 Find 5 Shipwrecks",color:"gray"}]
execute if score @s ec.quest_id_6 matches 9 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Nether Domination",color:"light_purple"},{text:" \u2014 Kill 100 Nether Mobs",color:"gray"}]
execute if score @s ec.quest_id_6 matches 10 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"The Void Walker",color:"light_purple"},{text:" \u2014 Explore 3 End Cities",color:"gray"}]
execute if score @s ec.quest_id_6 matches 11 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Hollow King's Bane",color:"light_purple"},{text:" \u2014 Defeat the Hollow King",color:"gray"}]
execute if score @s ec.quest_id_6 matches 12 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Verdant Guardian",color:"light_purple"},{text:" \u2014 Defeat the Verdant Warden",color:"gray"}]
execute if score @s ec.quest_id_6 matches 13 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Stormbreaker",color:"light_purple"},{text:" \u2014 Defeat the Stormforged",color:"gray"}]
execute if score @s ec.quest_id_6 matches 14 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Tidecaller's End",color:"light_purple"},{text:" \u2014 Defeat the Tidecaller",color:"gray"}]
execute if score @s ec.quest_id_6 matches 15 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Earthshaker's Fall",color:"light_purple"},{text:" \u2014 Defeat the Earthshaker",color:"gray"}]
execute if score @s ec.quest_id_6 matches 16 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Nightmare Slayer",color:"light_purple"},{text:" \u2014 Defeat the Nightmare",color:"gray"}]
execute if score @s ec.quest_id_6 matches 17 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Infernal Titan's Doom",color:"light_purple"},{text:" \u2014 Defeat the Infernal Titan",color:"gray"}]
execute if score @s ec.quest_id_6 matches 18 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Soul Warden's Rest",color:"light_purple"},{text:" \u2014 Defeat the Soul Warden",color:"gray"}]
execute if score @s ec.quest_id_6 matches 19 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Crimson Carnage",color:"light_purple"},{text:" \u2014 Defeat the Crimson Behemoth",color:"gray"}]
execute if score @s ec.quest_id_6 matches 20 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Void Emperor",color:"light_purple"},{text:" \u2014 Defeat the Void Sovereign",color:"gray"}]
execute if score @s ec.quest_id_6 matches 21 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"End Architect's Fall",color:"light_purple"},{text:" \u2014 Defeat the Ender Architect",color:"gray"}]
execute if score @s ec.quest_id_6 matches 22 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Legendary Chef",color:"light_purple"},{text:" \u2014 Cook 5 Legendary Feasts",color:"gray"}]
execute if score @s ec.quest_id_6 matches 23 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Dungeon Conqueror",color:"light_purple"},{text:" \u2014 Complete 8 Dungeons",color:"gray"}]
execute if score @s ec.quest_id_6 matches 24 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Lore Sage",color:"light_purple"},{text:" \u2014 Complete 8 Lore Sets",color:"gray"}]
execute if score @s ec.quest_id_6 matches 25 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Runic Legend",color:"light_purple"},{text:" \u2014 Forge 20 Runes",color:"gray"}]
execute if score @s ec.quest_id_6 matches 26 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"The Grand Transmutation",color:"light_purple"},{text:" \u2014 Transmute 50 Items",color:"gray"}]
execute if score @s ec.quest_id_6 matches 27 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Boss Rush",color:"light_purple"},{text:" \u2014 Defeat 5 World Bosses",color:"gray"}]
execute if score @s ec.quest_id_6 matches 28 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"Triple Wither",color:"light_purple"},{text:" \u2014 Defeat the Wither 3 Times",color:"gray"}]
execute if score @s ec.quest_id_6 matches 29 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"All-Biome Gourmet",color:"light_purple"},{text:" \u2014 Master 5 Recipe Categories",color:"gray"}]
execute if score @s ec.quest_id_6 matches 30 run tellraw @s ["",{text:"\u2726 ",color:"dark_purple"},{text:"Quest Revealed: ",color:"yellow"},{text:"The Eternal Harvest",color:"light_purple"},{text:" \u2014 Forage + Prospect 200 Total",color:"gray"}]

# === Quest Type Tip ===
# Default: boss (12) — most T6 quests are boss fights
scoreboard players set #qtype ec.var 12
execute if score @s ec.quest_id_6 matches 4 run scoreboard players set #qtype ec.var 1
execute if score @s ec.quest_id_6 matches 5 run scoreboard players set #qtype ec.var 5
execute if score @s ec.quest_id_6 matches 6 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_6 matches 7 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_6 matches 8 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_6 matches 9 run scoreboard players set #qtype ec.var 2
execute if score @s ec.quest_id_6 matches 10 run scoreboard players set #qtype ec.var 8
execute if score @s ec.quest_id_6 matches 22 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_6 matches 23 run scoreboard players set #qtype ec.var 9
execute if score @s ec.quest_id_6 matches 24 run scoreboard players set #qtype ec.var 7
execute if score @s ec.quest_id_6 matches 25 run scoreboard players set #qtype ec.var 10
execute if score @s ec.quest_id_6 matches 26 run scoreboard players set #qtype ec.var 11
execute if score @s ec.quest_id_6 matches 29 run scoreboard players set #qtype ec.var 6
execute if score @s ec.quest_id_6 matches 30 run scoreboard players set #qtype ec.var 13
function evercraft:quests/tips/show
