# Codex Overview Stats — Triggered by clicking the Codex title
# Shows: Time & Distance, Progression, Crates, Dream Rate Breakdown

# === TIME & DISTANCE ===
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"gold"},{text:"REALM STATISTICS",color:"#DDF0EE",bold:true},{text:" ✦",color:"gold"}]
tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}

# Play time: ach.play_ticks is in ticks. Convert to hours + minutes.
# hours = ticks / 72000, remainder minutes = (ticks % 72000) / 1200
scoreboard players operation #st_ticks ec.temp = @s ach.play_ticks
scoreboard players set #st_div ec.temp 72000
scoreboard players operation #st_hours ec.temp = #st_ticks ec.temp
scoreboard players operation #st_hours ec.temp /= #st_div ec.temp
scoreboard players operation #st_rem ec.temp = #st_ticks ec.temp
scoreboard players operation #st_rem ec.temp %= #st_div ec.temp
scoreboard players set #st_div ec.temp 1200
scoreboard players operation #st_mins ec.temp = #st_rem ec.temp
scoreboard players operation #st_mins ec.temp /= #st_div ec.temp

tellraw @s [{text:"  ⏱ Time Played: ",color:"gray"},{score:{name:"#st_hours",objective:"ec.temp"},color:"gold"},{text:"h ",color:"gold"},{score:{name:"#st_mins",objective:"ec.temp"},color:"gold"},{text:"m",color:"gold"}]

# Walk distance: ach.walk_cm is in cm. Convert to km (divide by 100000).
# Show as blocks (cm / 100) for more useful number
scoreboard players operation #st_dist ec.temp = @s ach.walk_cm
scoreboard players set #st_div ec.temp 100
scoreboard players operation #st_dist ec.temp /= #st_div ec.temp
tellraw @s [{text:"  🏃 Distance Traveled: ",color:"gray"},{score:{name:"#st_dist",objective:"ec.temp"},color:"aqua"},{text:" blocks",color:"aqua"}]

tellraw @s {text:""}

# === PROGRESSION (inline from stats/progress) ===
tellraw @s [{text:"  ★ ",color:"light_purple"},{text:"Progression",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Artifacts: ",color:"gray"},{score:{name:"@s",objective:"ec.artifacts_ever"},color:"gold"},{text:"/290",color:"dark_gray"}]
tellraw @s [{text:"    Achievements: ",color:"gray"},{score:{name:"@s",objective:"ach.total"},color:"green"},{text:"/601",color:"dark_gray"}]
tellraw @s [{text:"    Advantage Trees: ",color:"gray"},{score:{name:"@s",objective:"ach.trees_unlocked"},color:"white"},{text:"/13",color:"dark_gray"},{text:" (Level ",color:"dark_gray"},{score:{name:"@s",objective:"ach.total_levels"},color:"white"},{text:")",color:"dark_gray"}]
tellraw @s [{text:"    Quests Done: ",color:"gray"},{score:{name:"@s",objective:"ach.quests_done"},color:"white"}]
tellraw @s [{text:"    Armor Sets: ",color:"gray"},{score:{name:"@s",objective:"ach.sets_equipped"},color:"white"},{text:"/27",color:"dark_gray"}]

tellraw @s {text:""}

# === CRATES (inline from stats/crates) ===
tellraw @s [{text:"  📦 ",color:"yellow"},{text:"Crates",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Total Opened: ",color:"gray"},{score:{name:"@s",objective:"ach.crates_opened"},color:"gold",bold:true}]
tellraw @s [{text:"    Mining: ",color:"gray"},{score:{name:"@s",objective:"ach.crates_mining"},color:"white"},{text:" | Fishing: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.crates_fishing"},color:"white"},{text:" | Harvest: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.crates_harvest"},color:"white"}]
tellraw @s [{text:"    Mob: ",color:"gray"},{score:{name:"@s",objective:"ach.crates_mob"},color:"white"},{text:" | Structure: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.crates_structure"},color:"white"}]
tellraw @s [{text:"    Companion: ",color:"gray"},{score:{name:"@s",objective:"ec.crate_comp"},color:"white"},{text:" | Artifact: ",color:"dark_gray"},{score:{name:"@s",objective:"ec.crate_art"},color:"white"},{text:" | Achievement: ",color:"dark_gray"},{score:{name:"@s",objective:"ec.crate_ach"},color:"white"}]

# Crate streak
scoreboard players operation @s ec.temp = @s ach.crates_opened
scoreboard players operation @s ec.temp -= @s ec.last_mythical_at
tellraw @s [{text:"    Streak: ",color:"gray"},{score:{name:"@s",objective:"ec.temp"},color:"gold"},{text:" crates since last Mythical",color:"dark_gray"}]

tellraw @s {text:""}

# === DREAM RATE BREAKDOWN ===
function evercraft:dreams/check

playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 1.0
