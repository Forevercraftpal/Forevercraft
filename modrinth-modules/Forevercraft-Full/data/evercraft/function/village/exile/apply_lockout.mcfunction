# ============================================================
# Apply Village Exile Lockout
# Starts a 7-day (504000 gametime tick) exile from current village
# Run as the player
# ============================================================

# Mark player as exiled
scoreboard players set @s vs.exile 1

# Calculate expiry: current gametime + 504000 ticks (7 in-game days)
execute store result score #vs_now vs.temp run time query gametime
scoreboard players operation #vs_exile_end vs.temp = #vs_now vs.temp
scoreboard players operation #vs_exile_end vs.temp += #504000 ec.const

# Store exile data in persistent storage
execute store result storage eden:temp vs.vid int 1 run scoreboard players get @s ec.current_village
execute store result storage eden:temp vs.uuid int 1 run data get entity @s UUID[0]
execute store result storage eden:temp vs.expires_at int 1 run scoreboard players get #vs_exile_end vs.temp
function evercraft:village/exile/apply_lockout_macro with storage eden:temp vs

# Set rep to 0 (don't let it stay negative after exile starts)
scoreboard players set @s ec.village_rep 0
function evercraft:quests/reputation/save_village_rep

# Reaper penalty: exile tanks your renown (good deeds) by 250
scoreboard players remove @s rp.renown 250
execute if score @s rp.renown matches ..-1 run scoreboard players set @s rp.renown 0

# Visual/audio feedback
title @s times 10 80 30
title @s title {text:"EXILED",color:"dark_red",bold:true}
title @s subtitle {text:"You have been banished for 7 days!",color:"red"}
playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.5 0.5
playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 0.8
particle minecraft:angry_villager ~ ~2 ~ 2 1 2 0.1 30

# Chat notification with forgiveness info
tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You have been ",color:"red"},{text:"EXILED",color:"dark_red",bold:true},{text:" from this village!",color:"red"}]
tellraw @s ["",{text:"  Duration: ",color:"gray"},{text:"7 in-game days",color:"red"}]
tellraw @s ["",{text:"  Quest board and trades are ",color:"gray"},{text:"locked",color:"dark_red"},{text:".",color:"gray"}]
tellraw @s ["",{text:"  Offer ",color:"gray"},{text:"64 Emerald Blocks",color:"green"},{text:" at the quest board to seek forgiveness.",color:"gray"}]
