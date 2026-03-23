# Bounty — Patron target killed
# Run as player who had the active bounty

# Forever Coin reward by bounty tier (no DR scaling)
function evercraft:coins/bounty_reward

# Grant tier-specific rewards
execute if score @s ec.bnt_tier matches 2 run function evercraft:bounty/reward/contract
execute if score @s ec.bnt_tier matches 3 run function evercraft:bounty/reward/commission
execute if score @s ec.bnt_tier matches 4 run function evercraft:bounty/reward/expedition
execute if score @s ec.bnt_tier matches 5 run function evercraft:bounty/reward/heroic

# Save reputation and check for rank-up (bounty rep was added by reward function)
function evercraft:quests/reputation/save_village_rep
function evercraft:quests/reputation/check_rank

# Clear bounty state
scoreboard players set @s ec.bnt_tier 0
scoreboard players set @s ec.bnt_biome -1
scoreboard players set @s ec.bnt_timer 0
scoreboard players set @s ec.bnt_spawned 0
scoreboard players set @s ec.bnt_owner 0

# Announcement
tellraw @a [{text:"  ",color:"red",bold:true},{selector:"@s",color:"gold",bold:true},{text:" has completed a Patron Bounty!",color:"red"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 1.0
title @s subtitle {text:"Bounty Complete!",color:"gold",bold:true}
title @s title {text:"",color:"gold"}

# Track kills + lifetime bounty completions
scoreboard players add @s ec.bnt_kills 1
scoreboard players add @s ec.bounty_done 1
scoreboard players add #news_bounties ec.var 1

# Reaper renown (+100 for bounty completion)
function evercraft:reaper/deeds/on_bounty_complete

# Bounty + Taskmaster: Taskmaster level grants bonus bounty rewards
# Lv 5+: +8 emeralds, Lv 15+: +16 emeralds + 200 XP
execute if score @s adv.taskmaster matches 5..14 run give @s emerald 8
execute if score @s adv.taskmaster matches 5..14 run tellraw @s [{text:"  [Taskmaster] ",color:"dark_purple"},{text:"+8 bonus emeralds",color:"green"}]
execute if score @s adv.taskmaster matches 15.. run give @s emerald 16
execute if score @s adv.taskmaster matches 15.. run experience add @s 200 points
execute if score @s adv.taskmaster matches 15.. run tellraw @s [{text:"  [Taskmaster] ",color:"dark_purple"},{text:"+16 bonus emeralds, +200 XP",color:"green"}]

# World Events + Bounty: Active world event grants +100 bonus rep and +100 XP
execute if score #we_active ec.var matches 1 run scoreboard players add @s ec.village_rep 100
execute if score #we_active ec.var matches 1 run experience add @s 100 points
execute if score #we_active ec.var matches 1 run tellraw @s [{text:"  [World Event] ",color:"gold"},{text:"+100 bonus rep, +100 XP!",color:"yellow"}]

# Bounty + Party: Nearby party members get partial rewards (emeralds + XP + rep)
tag @s add ec.bnt_killer
execute if score @s ec.party_id matches 1.. run scoreboard players operation #bnt_party ec.var = @s ec.party_id
execute if score @s ec.party_id matches 1.. at @s as @a[distance=..64,tag=!ec.bnt_killer] if score @s ec.party_id = #bnt_party ec.var run function evercraft:bounty/reward/party_share
tag @s remove ec.bnt_killer

# Realm milestone: bounty completed
function evercraft:milestones/increment/bounty_complete
