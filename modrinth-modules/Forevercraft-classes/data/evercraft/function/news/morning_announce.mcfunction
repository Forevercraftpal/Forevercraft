# Forevercraft News — Morning Announcement (9 AM)
# Unified daily broadcast: yesterday's recap + today's notices (market, quests, bounties)

# Sound cue
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.6 1.2

# Header
tellraw @a ""
tellraw @a [{text:"  ◆ ",color:"#D6D0C7"},{text:"FOREVERCRAFT NEWS",bold:true,color:"gold"},{text:" ◆",color:"#D6D0C7"}]

# Day + Season line
execute if score #season_id ec.var matches 0 run tellraw @a [{text:"  Day ",color:"gray"},{score:{name:"#visual_day",objective:"ec.var"},color:"white"},{text:" · ",color:"dark_gray"},{text:"Autumn",color:"#D4883B"}]
execute if score #season_id ec.var matches 1 run tellraw @a [{text:"  Day ",color:"gray"},{score:{name:"#visual_day",objective:"ec.var"},color:"white"},{text:" · ",color:"dark_gray"},{text:"Winter",color:"#A8C8E8"}]
execute if score #season_id ec.var matches 2 run tellraw @a [{text:"  Day ",color:"gray"},{score:{name:"#visual_day",objective:"ec.var"},color:"white"},{text:" · ",color:"dark_gray"},{text:"Spring",color:"#7FBF7F"}]
execute if score #season_id ec.var matches 3 run tellraw @a [{text:"  Day ",color:"gray"},{score:{name:"#visual_day",objective:"ec.var"},color:"white"},{text:" · ",color:"dark_gray"},{text:"Summer",color:"#F0D060"}]

# === Yesterday's Recap ===
# Check if anything happened
scoreboard players set #news_total ec.temp 0
scoreboard players operation #news_total ec.temp += #news_y_quests ec.var
scoreboard players operation #news_total ec.temp += #news_y_bosses ec.var
scoreboard players operation #news_total ec.temp += #news_y_crates ec.var
scoreboard players operation #news_total ec.temp += #news_y_dungeons ec.var
scoreboard players operation #news_total ec.temp += #news_y_glyphs ec.var
scoreboard players operation #news_total ec.temp += #news_y_wishes ec.var
scoreboard players operation #news_total ec.temp += #news_y_bounties ec.var
scoreboard players operation #news_total ec.temp += #news_y_duels ec.var
scoreboard players operation #news_total ec.temp += #news_y_conflicts ec.var
scoreboard players operation #news_total ec.temp += #news_y_marriages ec.var

# Quiet day fallback
execute if score #news_total ec.temp matches 0 run tellraw @a [{text:"  Yesterday was quiet in the realm.",color:"gray",italic:true}]

# Individual stat lines (only show if non-zero)
execute if score #news_y_quests ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"📜 ","color":"aqua"},{score:{name:"#news_y_quests",objective:"ec.var"},color:"white"},{text:" quests completed",color:"gray"}]
execute if score #news_y_bosses ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"⚔ ","color":"red"},{score:{name:"#news_y_bosses",objective:"ec.var"},color:"white"},{text:" bosses slain",color:"gray"}]
execute if score #news_y_dungeons ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"🏛 ","color":"dark_aqua"},{score:{name:"#news_y_dungeons",objective:"ec.var"},color:"white"},{text:" dungeons cleared",color:"gray"}]
execute if score #news_y_bounties ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"🎯 ","color":"gold"},{score:{name:"#news_y_bounties",objective:"ec.var"},color:"white"},{text:" bounties completed",color:"gray"}]
execute if score #news_y_crates ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"📦 ","color":"yellow"},{score:{name:"#news_y_crates",objective:"ec.var"},color:"white"},{text:" crates opened",color:"gray"}]
execute if score #news_y_glyphs ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"✦ ","color":"light_purple"},{score:{name:"#news_y_glyphs",objective:"ec.var"},color:"white"},{text:" glyphs forged",color:"gray"}]
execute if score #news_y_wishes ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"🌀 ","color":"#E0B0FF"},{score:{name:"#news_y_wishes",objective:"ec.var"},color:"white"},{text:" fountain wishes",color:"gray"}]
execute if score #news_y_duels ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"🗡 ","color":"gold"},{score:{name:"#news_y_duels",objective:"ec.var"},color:"white"},{text:" duels fought",color:"gray"}]
execute if score #news_y_conflicts ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"⚑ ","color":"dark_red"},{score:{name:"#news_y_conflicts",objective:"ec.var"},color:"white"},{text:" guild conflicts erupted",color:"gray"}]
execute if score #news_y_marriages ec.var matches 1.. run tellraw @a [{text:"    "},{"text":"💍 ","color":"#FFD700"},{score:{name:"#news_y_marriages",objective:"ec.var"},color:"white"},{text:" marriages celebrated",color:"gray"}]

# === Personal Reputation (per-player, only if Reaper system scores exist) ===
# Villain-leaning (infamy > renown and infamy >= 1000)
execute as @a[scores={rp.infamy=1000..}] if score @s rp.infamy > @s rp.renown run tellraw @s [{text:"    "},{text:"☠ ","color":"dark_red"},{text:"Infamy: ",color:"gray"},{score:{name:"@s",objective:"rp.infamy"},color:"red"},{text:" · ",color:"dark_gray"},{text:"Renown: ",color:"gray"},{score:{name:"@s",objective:"rp.renown"},color:"green"}]
# Peacemonger-leaning (renown > infamy and renown >= 1000)
execute as @a[scores={rp.renown=1000..}] if score @s rp.renown > @s rp.infamy run tellraw @s [{text:"    "},{text:"✦ ","color":"green"},{text:"Renown: ",color:"gray"},{score:{name:"@s",objective:"rp.renown"},color:"green"},{text:" · ",color:"dark_gray"},{text:"Infamy: ",color:"gray"},{score:{name:"@s",objective:"rp.infamy"},color:"red"}]
# Neutral (both below 1000) — show only if at least one is non-zero
execute as @a[scores={rp.infamy=1..999}] unless score @s rp.renown matches 1000.. run tellraw @s [{text:"    "},{text:"◇ ","color":"gray"},{text:"Reputation: Neutral",color:"gray"},{text:" (Infamy: ",color:"dark_gray"},{score:{name:"@s",objective:"rp.infamy"},color:"red"},{text:" · Renown: ",color:"dark_gray"},{score:{name:"@s",objective:"rp.renown"},color:"green"},{text:")",color:"dark_gray"}]
execute as @a[scores={rp.renown=1..999}] unless score @s rp.infamy matches 1.. run tellraw @s [{text:"    "},{text:"◇ ","color":"gray"},{text:"Reputation: Neutral",color:"gray"},{text:" (Renown: ",color:"dark_gray"},{score:{name:"@s",objective:"rp.renown"},color:"green"},{text:")",color:"dark_gray"}]

# === Today's Notices ===
tellraw @a [{text:"  ─────────────────────",color:"dark_gray"}]

# Personal Daily Challenge — per-player (dungeon or trial based on playstyle)
execute as @a at @s run function evercraft:news/morning_personal_daily

# Other notices
tellraw @a [{text:"  New quests and bounties await at the village boards!",color:"gray",italic:true}]
function evercraft:news/morning_market with storage evercraft:news

# === CLEAR yesterday's counters after display to prevent stale re-announcements ===
# (Fixes ghost events if morning_announce fires twice or dawn_reset is skipped)
scoreboard players set #news_y_quests ec.var 0
scoreboard players set #news_y_bosses ec.var 0
scoreboard players set #news_y_crates ec.var 0
scoreboard players set #news_y_dungeons ec.var 0
scoreboard players set #news_y_glyphs ec.var 0
scoreboard players set #news_y_wishes ec.var 0
scoreboard players set #news_y_bounties ec.var 0
scoreboard players set #news_y_duels ec.var 0
scoreboard players set #news_y_conflicts ec.var 0
scoreboard players set #news_y_marriages ec.var 0
