# Dreams Check - Shows player's current dream rate with full breakdown
# Called via /trigger ec.dreams

# Get total dream rate (scale 10 for decimal: 175 = 17.5)
execute store result score @s ec.temp run attribute @s luck get 10

# Header
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"light_purple"},{text:"YOUR DREAMS",color:"dark_purple",bold:true},{text:" ✦",color:"light_purple"}]
tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}

# Show total dream rate (whole + decimal)
scoreboard players operation @s ec.var = @s ec.temp
scoreboard players set #10 ec.const 10
scoreboard players operation @s ec.var /= #10 ec.const
scoreboard players operation #dec ec.temp = @s ec.temp
scoreboard players operation #dec ec.temp %= #10 ec.const

tellraw @s [{text:"  Dream Rate: ",color:"gray"},{score:{name:"@s",objective:"ec.var"},color:"gold",bold:true},{text:".",color:"gold",bold:true},{score:{name:"#dec",objective:"ec.temp"},color:"gold",bold:true}]
tellraw @s {text:""}

# === BREAKDOWN SECTIONS ===
# Each sub-function prints its own header only if it has items to show

# Active companion (luck base — usually the biggest contributor)
function evercraft:dreams/breakdown/companion

# Artifact passives (inventory accessories/rings with luck modifiers)
function evercraft:dreams/breakdown/artifacts

# Boss exclusive artifacts (boss drop accessories with luck modifiers)
function evercraft:dreams/breakdown/boss_artifacts

# Gear (intrinsic luck on armor pieces — fishing armor, mythical sets)
function evercraft:dreams/breakdown/gear

# Armor Trims (Amethyst +0.25/piece, Netherite +0.5/piece)
function evercraft:dreams/breakdown/trims

# Set bonuses (Fishing 2pc, Titan 2pc, armored elytra luck)
function evercraft:dreams/breakdown/sets

# Permanent bonuses (Crystal of Dreams, Rabbit's Dreaming Foot, etc.)
function evercraft:dreams/breakdown/permanent

# Cooking buffs (Well-Fed, Fortune Meal)
function evercraft:dreams/breakdown/cooking

# Prestige abilities (Taskmaster tree)
function evercraft:dreams/breakdown/prestige

# Enchantments (Fortune/Looting/Luck of the Sea on held item)
function evercraft:dreams/breakdown/enchantments

# Environmental (time of day, weather, moon phase)
function evercraft:dreams/breakdown/environment

# Active effects (Luck potion, True Shot, Tidal Call, 5pc set)
function evercraft:dreams/breakdown/effects

# Events (Dream Surge)
function evercraft:dreams/breakdown/event

# Lore Discovery (completed set bonuses)
function evercraft:dreams/breakdown/lore

# Artifact Constellations (+0.25 DR per completed constellation)
function evercraft:dreams/breakdown/constellations

# World Events (Starfall, The Dreaming, Aurora Bloom, etc.)
function evercraft:dreams/breakdown/world_events

# Calendar Events (Harvest Festival, Blood Moon, etc.)
function evercraft:dreams/breakdown/calendar

# Party & Multiplayer (proximity bonus, tidal network)
function evercraft:dreams/breakdown/party

# Biome Mastery (mastery level DR bonus)
function evercraft:dreams/breakdown/biome_mastery

# Runes & Glyphforge (inscription stones, weapon enchants)
function evercraft:dreams/breakdown/runes

# === CRATE UNLOCK STATUS ===
tellraw @s {text:""}
tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}
tellraw @s [{text:"  Crate Unlocks:",color:"gray"}]

# Restore ec.temp for threshold checks (sub-functions clobbered it)
execute store result score @s ec.temp run attribute @s luck get 10

# Ornate (Dream Rate >= 5 -> ec.temp >= 50)
execute if score @s ec.temp matches 50.. run tellraw @s [{text:"    ✦ Ornate Crates: ",color:"gray"},{text:"UNLOCKED",color:"green",bold:true}]
execute unless score @s ec.temp matches 50.. run tellraw @s [{text:"    ✦ Ornate Crates: ",color:"gray"},{text:"LOCKED",color:"red"},{text:" (need 5.0)",color:"dark_gray"}]

# Exquisite (Dream Rate >= 15 -> ec.temp >= 150)
execute if score @s ec.temp matches 150.. run tellraw @s [{text:"    ⚡ Exquisite Crates: ",color:"gray"},{text:"UNLOCKED",color:"green",bold:true}]
execute unless score @s ec.temp matches 150.. run tellraw @s [{text:"    ⚡ Exquisite Crates: ",color:"gray"},{text:"LOCKED",color:"red"},{text:" (need 15.0)",color:"dark_gray"}]

# Mythical (Dream Rate >= 25 -> ec.temp >= 250)
execute if score @s ec.temp matches 250.. run tellraw @s [{text:"    ★ Mythical Crates: ",color:"gray"},{text:"UNLOCKED",color:"green",bold:true}]
execute unless score @s ec.temp matches 250.. run tellraw @s [{text:"    ★ Mythical Crates: ",color:"gray"},{text:"LOCKED",color:"red"},{text:" (need 25.0)",color:"dark_gray"}]

tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}
tellraw @s [{text:"  [",color:"dark_gray"},{text:"Dream History",color:"#E0B0FF",click_event:{action:"run_command",command:"/trigger ec.dr_history set 1"},hover_event:{action:"show_text",value:{text:"View all permanent DR events earned",color:"gray"}}},{text:"]",color:"dark_gray"}]
tellraw @s {text:""}

playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.2

# --- Achievement hooks ---
# Dream Weaver (secret): dream rate >= 50.0 (ec.temp >= 500)
execute if score @s ec.temp matches 500.. unless entity @s[advancements={evercraft:alternate/secrets/dream_weaver=true}] run advancement grant @s only evercraft:alternate/secrets/dream_weaver

# The Dreaming: First player to hit DR 30 triggers one-time world event
execute if score @s ec.temp matches 300.. if score #dream_30_ever ec.var matches 0 if score #we_active ec.var matches 0 run data modify storage evercraft:campfire temp.milestone set value "30"
execute if score @s ec.temp matches 300.. if score #dream_30_ever ec.var matches 0 if score #we_active ec.var matches 0 run function evercraft:campfire_stories/record/dream_milestone
execute if score @s ec.temp matches 300.. if score #dream_30_ever ec.var matches 0 if score #we_active ec.var matches 0 run function evercraft:world_events/the_dreaming/start
