# ============================================================
# Complete Tier 1 (Errand) Quest
# ============================================================

# Clear quest slot and lock until reset
scoreboard players set @s ec.quest_id_1 0
scoreboard players set @s ec.quest_prog_1 0
scoreboard players set @s ec.quest_done_1 1

# Grant reputation (+25) and XP (+25)
scoreboard players add @s ec.village_rep 25
experience add @s 25 points
execute if score #cal_prosperity ec.var matches 1 run experience add @s 12 points
scoreboard players add @s adv.stat_quests 1

# Taskmaster bonus: +4% XP/rep per level
execute if score @s adv.taskmaster matches 1.. run scoreboard players set #base_quest_xp adv.temp 25
execute if score @s adv.taskmaster matches 1.. run scoreboard players set #base_quest_rep adv.temp 25
execute if score @s adv.taskmaster matches 1.. run function evercraft:advantage/taskmaster/apply_bonus

# Village specialization bonus (+25% rep at specialized villages)
scoreboard players set #vs_base_rep vs.temp 25
function evercraft:village/quest_bonus

# Save updated reputation to village-specific storage
function evercraft:quests/reputation/save_village_rep

# Check inventory space before giving crate
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Grant Common Quest Crate (barrel with loot inside)
execute if score #inv_full ec.var matches 0 run give @s minecraft:barrel[minecraft:custom_name={text:"Common Quest Crate",color:"white",italic:false},minecraft:container_loot={loot_table:"evercraft:crates/common"},minecraft:lore=[{text:"A modest reward for honest work.",color:"dark_gray",italic:true}]] 1
execute if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:{text:"Common Quest Crate",color:"white",italic:false},container_loot:{loot_table:"evercraft:crates/common"},lore:[{text:"A modest reward for honest work.",color:"dark_gray",italic:true}]}},PickupDelay:0s,Age:2400s}
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Check for reputation milestone
function evercraft:quests/reputation/check_rank

# Effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.15 25

# Consolidated: main message + coins in one line
tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Errand Complete! ",color:"green"},{text:"+25 XP ",color:"green"},{text:"+25 REP ",color:"aqua"},{text:"+1 Coin",color:"#E0B0FF"}]

# Achievement tracking
scoreboard players add @s ach.quests_done 1
scoreboard players add @s ec.sp_quests_done 1
function evercraft:milestones/increment/quest_done
scoreboard players add #news_quests ec.var 1
scoreboard players set #rp_quest_tier rp.temp 1
function evercraft:reaper/deeds/on_quest_complete
scoreboard players add @s ach.quest_rep 25
scoreboard players add @s ach.quest_xp 25
# Daily first-quest bonus (+50 XP for first quest each day)
execute if score @s ec.daily_quest matches 0 run experience add @s 50 points
execute if score @s ec.daily_quest matches 0 run tellraw @s [{text:"  ★ ",color:"yellow"},{text:"Daily Bonus! +50 XP",color:"green"}]
scoreboard players set @s ec.daily_quest 1

# Forever Coin reward: Errand = 1 coin (no DR scaling)
scoreboard players add @s ec.coins 1
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:5}

# Guild Expedition: Quest bonus XP (activity=7)
function evercraft:guild/expedition/bonus_xp {base:25,activity:7}
