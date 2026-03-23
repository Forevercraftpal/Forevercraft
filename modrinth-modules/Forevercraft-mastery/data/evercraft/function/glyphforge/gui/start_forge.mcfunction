# Glyphforge GUI — Start Forging (dynamic timer based on rune count)
# Run as player with RF.InMenu tag, at player position

# Verify state is 1 (glyph deposited)
execute unless score @s rf.state matches 1 run return 0

# --- Calculate forge duration based on item's current rf_count ---
# Formula: (rf_count + 3) * 72000 ticks = (rf_count + 3) days
# 1st rune (rf_count=0): 3 days, 2nd (rf_count=1): 4 days, ..., 13th (rf_count=12): 15 days
scoreboard players set #rf_count rf.temp 0
execute store result score #rf_count rf.temp run data get entity @s SelectedItem.components."minecraft:custom_data".rf_count
scoreboard players add #rf_count rf.temp 3
scoreboard players set #rf_ticks rf.temp 72000
scoreboard players operation #rf_count rf.temp *= #rf_ticks rf.temp
# #rf_count now holds the forge_duration in ticks

# Gathering Pipeline: World event active → 25% forge time reduction
execute if score #we_active ec.var matches 1 run scoreboard players set #rf_mult rf.temp 75
execute if score #we_active ec.var matches 1 run scoreboard players operation #rf_count rf.temp *= #rf_mult rf.temp
execute if score #we_active ec.var matches 1 run scoreboard players operation #rf_count rf.temp /= #100 ec.const
execute if score #we_active ec.var matches 1 run tellraw @s [{text:"  [World Event] ",color:"gold"},{text:"Forge time reduced by 25%!",color:"yellow"}]

# Gathering Pipeline: Mining level 15+ → 10% forge time reduction
execute if score @s adv.mining matches 15.. run scoreboard players set #rf_mult rf.temp 90
execute if score @s adv.mining matches 15.. run scoreboard players operation #rf_count rf.temp *= #rf_mult rf.temp
execute if score @s adv.mining matches 15.. run scoreboard players operation #rf_count rf.temp /= #100 ec.const
execute if score @s adv.mining matches 15.. run tellraw @s [{text:"  [Mining Mastery] ",color:"gray"},{text:"Expert Mining speeds the forge (-10%)",color:"white"}]

# Store forge_duration on marker
execute store result storage evercraft:glyphforge temp_duration int 1 run scoreboard players get #rf_count rf.temp
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.forge_duration set from storage evercraft:glyphforge temp_duration

# Store current gametime as forge_started_at on the nearest marker
execute store result storage evercraft:glyphforge temp_gametime long 1 run time query gametime
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.forge_started_at set from storage evercraft:glyphforge temp_gametime

# Set state to 2 (forging in progress)
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_state set value 2
scoreboard players set @s rf.state 2

# Calculate days for display message
scoreboard players operation #rf_days rf.temp = #rf_count rf.temp
scoreboard players set #rf_div rf.temp 72000
scoreboard players operation #rf_days rf.temp /= #rf_div rf.temp

# Effects
playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 0.8 0.6
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.8 1.0
particle minecraft:flame ~ ~1 ~ 0.3 0.2 0.3 0.02 20

# Title notification
title @s times 5 40 10
title @s title {text:" "}
title @s subtitle [{text:"Forging Begun!",color:"gold",bold:true}]

# Display days via storage macro
execute store result storage evercraft:glyphforge forge_days int 1 run scoreboard players get #rf_days rf.temp
function evercraft:glyphforge/gui/forge_started_msg with storage evercraft:glyphforge

# Close menu — forging is hands-off, player should leave
function evercraft:glyphforge/gui/close
