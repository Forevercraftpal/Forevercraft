# ============================================================
# On Enter Exiled Village
# Warning message when entering a village the player is exiled from
# Run as the player
# ============================================================

# Calculate remaining time
execute store result score #vs_exile_expires vs.temp run data get storage eden:temp vs.exile_data.expires_at
execute store result score #vs_now vs.temp run time query gametime
scoreboard players operation #vs_remaining vs.temp = #vs_exile_expires vs.temp
scoreboard players operation #vs_remaining vs.temp -= #vs_now vs.temp

# Convert remaining ticks to approximate minutes (/ 1200)
scoreboard players set #vs_div_1200 vs.temp 1200
scoreboard players operation #vs_remain_min vs.temp = #vs_remaining vs.temp
scoreboard players operation #vs_remain_min vs.temp /= #vs_div_1200 vs.temp

# Show warning
title @s actionbar [{text:"⚠ ",color:"dark_red"},{text:"EXILED",color:"red",bold:true},{text:" — ~",color:"dark_red"},{score:{name:"#vs_remain_min",objective:"vs.temp"},color:"red"},{text:"min remaining",color:"dark_red"}]
playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 0.8

# Clean up temp data (was kept by check_lockout_macro for us to read)
data remove storage eden:temp vs.exile_data
