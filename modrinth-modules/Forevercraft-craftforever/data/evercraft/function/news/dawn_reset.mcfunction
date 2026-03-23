# Forevercraft News — Dawn Reset
# Copy today's counters to yesterday, then zero today

# Copy today → yesterday
scoreboard players operation #news_y_quests ec.var = #news_quests ec.var
scoreboard players operation #news_y_bosses ec.var = #news_bosses ec.var
scoreboard players operation #news_y_crates ec.var = #news_crates ec.var
scoreboard players operation #news_y_dungeons ec.var = #news_dungeons ec.var
scoreboard players operation #news_y_glyphs ec.var = #news_glyphs ec.var
scoreboard players operation #news_y_wishes ec.var = #news_wishes ec.var
scoreboard players operation #news_y_bounties ec.var = #news_bounties ec.var
scoreboard players operation #news_y_duels ec.var = #news_duels ec.var
scoreboard players operation #news_y_conflicts ec.var = #news_conflicts ec.var
scoreboard players operation #news_y_marriages ec.var = #news_marriages ec.var

# Zero today
scoreboard players set #news_quests ec.var 0
scoreboard players set #news_bosses ec.var 0
scoreboard players set #news_crates ec.var 0
scoreboard players set #news_dungeons ec.var 0
scoreboard players set #news_glyphs ec.var 0
scoreboard players set #news_wishes ec.var 0
scoreboard players set #news_bounties ec.var 0
scoreboard players set #news_duels ec.var 0
scoreboard players set #news_conflicts ec.var 0
scoreboard players set #news_marriages ec.var 0
