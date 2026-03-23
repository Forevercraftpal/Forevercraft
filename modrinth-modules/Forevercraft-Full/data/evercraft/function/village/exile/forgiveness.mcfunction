# ============================================================
# Village Exile Forgiveness
# Player offers 64 emerald blocks to lift exile early
# Called via quest trigger (ec.quest = 8) while in exiled village
# Run as the player
# ============================================================

# Must be exiled
execute unless score @s vs.exile matches 1 run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You are not exiled from this village.",color:"gray"}]
execute unless score @s vs.exile matches 1 run return fail

# Must be in a village
execute unless score @s ec.current_village matches 1.. run return fail

# Check if player has 64 emerald blocks
execute store result score #vs_emerald_count vs.temp run clear @s minecraft:emerald_block 0
execute unless score #vs_emerald_count vs.temp matches 64.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You need ",color:"red"},{text:"64 Emerald Blocks",color:"green"},{text:" to seek forgiveness. You have ",color:"red"},{score:{name:"#vs_emerald_count",objective:"vs.temp"},color:"yellow"},{text:".",color:"red"}]
execute unless score #vs_emerald_count vs.temp matches 64.. run return fail

# Consume 64 emerald blocks
clear @s minecraft:emerald_block 64

# Remove exile
function evercraft:village/exile/remove_lockout

# Set reputation to 0 (fresh start)
scoreboard players set @s ec.village_rep 0
scoreboard players set @s ec.rep_rank 0
function evercraft:quests/reputation/save_village_rep

# Grand forgiveness effects
title @s times 10 60 20
title @s title {text:"Forgiven",color:"gold",bold:true}
title @s subtitle {text:"The village welcomes you back.",color:"green"}
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
particle totem_of_undying ~ ~1 ~ 1 1 1 0.2 50

tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"The village elders have accepted your offering. Your exile is lifted.",color:"green"}]
tellraw @s ["",{text:"  Your reputation has been reset to ",color:"gray"},{text:"Stranger",color:"white"},{text:".",color:"gray"}]
