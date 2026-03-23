# Forevercraft News — Initialize daily tracking scores
# Preserves values across /reload (only sets if uninitialized)

# Today's counters (increment during gameplay, reset at dawn)
execute unless score #news_quests ec.var matches 0.. run scoreboard players set #news_quests ec.var 0
execute unless score #news_bosses ec.var matches 0.. run scoreboard players set #news_bosses ec.var 0
execute unless score #news_crates ec.var matches 0.. run scoreboard players set #news_crates ec.var 0
execute unless score #news_dungeons ec.var matches 0.. run scoreboard players set #news_dungeons ec.var 0
execute unless score #news_glyphs ec.var matches 0.. run scoreboard players set #news_glyphs ec.var 0
execute unless score #news_wishes ec.var matches 0.. run scoreboard players set #news_wishes ec.var 0
execute unless score #news_bounties ec.var matches 0.. run scoreboard players set #news_bounties ec.var 0
execute unless score #news_duels ec.var matches 0.. run scoreboard players set #news_duels ec.var 0
execute unless score #news_conflicts ec.var matches 0.. run scoreboard players set #news_conflicts ec.var 0
execute unless score #news_marriages ec.var matches 0.. run scoreboard players set #news_marriages ec.var 0

# Yesterday's totals (displayed at 9 AM, set at dawn)
execute unless score #news_y_quests ec.var matches 0.. run scoreboard players set #news_y_quests ec.var 0
execute unless score #news_y_bosses ec.var matches 0.. run scoreboard players set #news_y_bosses ec.var 0
execute unless score #news_y_crates ec.var matches 0.. run scoreboard players set #news_y_crates ec.var 0
execute unless score #news_y_dungeons ec.var matches 0.. run scoreboard players set #news_y_dungeons ec.var 0
execute unless score #news_y_glyphs ec.var matches 0.. run scoreboard players set #news_y_glyphs ec.var 0
execute unless score #news_y_wishes ec.var matches 0.. run scoreboard players set #news_y_wishes ec.var 0
execute unless score #news_y_bounties ec.var matches 0.. run scoreboard players set #news_y_bounties ec.var 0
execute unless score #news_y_duels ec.var matches 0.. run scoreboard players set #news_y_duels ec.var 0
execute unless score #news_y_conflicts ec.var matches 0.. run scoreboard players set #news_y_conflicts ec.var 0
execute unless score #news_y_marriages ec.var matches 0.. run scoreboard players set #news_y_marriages ec.var 0
