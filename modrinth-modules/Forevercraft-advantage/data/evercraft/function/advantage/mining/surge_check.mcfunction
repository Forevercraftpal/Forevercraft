# Mining Surge — Roll for mining speed burst
# 0.12% per level chance for Miner's Surge (block_break_speed boost)
# Level tiers increase boost: 1-9→+25%, 10-19→+50%, 20-24→+75%, 25→+100%

# Skip if no mining level
execute unless score @s adv.mining matches 1.. run return 0

# Skip if surge already active (prevent stacking)
execute if score @s adv.surge_timer matches 1.. run return 0

# Calculate chance: level * 12 / 100 (per 10000 roll = 0.12% per level)
scoreboard players operation #chance adv.temp = @s adv.mining
scoreboard players operation #chance adv.temp *= #12 adv.temp
scoreboard players operation #chance adv.temp /= #100 adv.temp

# Gathering synergy bonus: +2.5% (250/10000) when all three gathering trees >= 15
execute if score @s adv.syn_gather matches 1 run scoreboard players add #chance adv.temp 250

# Roll 1-10000
execute store result score #roll adv.temp run random value 1..10000
execute unless score #roll adv.temp <= #chance adv.temp run return 0

# Apply block_break_speed surge based on level tier
# Remove any leftover modifier first (safety)
attribute @s block_break_speed modifier remove evercraft:adv_mining_surge

execute if score @s adv.mining matches 1..9 run attribute @s block_break_speed modifier add evercraft:adv_mining_surge 0.25 add_multiplied_base
execute if score @s adv.mining matches 10..19 run attribute @s block_break_speed modifier add evercraft:adv_mining_surge 0.50 add_multiplied_base
execute if score @s adv.mining matches 20..24 run attribute @s block_break_speed modifier add evercraft:adv_mining_surge 0.75 add_multiplied_base
execute if score @s adv.mining matches 25 run attribute @s block_break_speed modifier add evercraft:adv_mining_surge 1.0 add_multiplied_base

# Set surge timer (200 ticks = 10 seconds)
scoreboard players set @s adv.surge_timer 200

# Effects
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.5
title @s actionbar [{text:"⛏ Miner's Surge!",color:"yellow",bold:true}]

# Party Combo: Shared Fortunes — Mining proc gives nearby Gathering partners bonus XP
execute if score @s ec.party_id matches 1.. at @s run function evercraft:party/combos/shared_fortunes

# Achievement tracking
scoreboard players add @s ach.surge_triggers 1
