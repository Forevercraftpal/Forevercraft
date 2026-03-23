# ============================================================
# Complete Tier 5 (Expedition) Quest
# ============================================================

scoreboard players set @s ec.quest_id_5 0
scoreboard players set @s ec.quest_prog_5 0
scoreboard players set @s ec.quest_done_5 1
scoreboard players add @s ec.village_rep 400
experience add @s 500 points
execute if score #cal_prosperity ec.var matches 1 run experience add @s 250 points
scoreboard players add @s adv.stat_quests 1

# Taskmaster bonus: +4% XP/rep per level
execute if score @s adv.taskmaster matches 1.. run scoreboard players set #base_quest_xp adv.temp 500
execute if score @s adv.taskmaster matches 1.. run scoreboard players set #base_quest_rep adv.temp 400
execute if score @s adv.taskmaster matches 1.. run function evercraft:advantage/taskmaster/apply_bonus

# Village specialization bonus (+25% rep at specialized villages)
scoreboard players set #vs_base_rep vs.temp 400
function evercraft:village/quest_bonus

# Save updated reputation to village-specific storage
function evercraft:quests/reputation/save_village_rep

# Check inventory space before giving crate
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Grant Exquisite Quest Crate
execute if score #inv_full ec.var matches 0 run give @s minecraft:barrel[minecraft:custom_name={text:"Exquisite Quest Crate",color:"light_purple",italic:false},minecraft:container_loot={loot_table:"evercraft:crates/exquisite"},minecraft:enchantment_glint_override=true,minecraft:lore=[{text:"Spoils worthy of a seasoned adventurer.",color:"dark_gray",italic:true}]] 1
execute if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:{text:"Exquisite Quest Crate",color:"light_purple",italic:false},container_loot:{loot_table:"evercraft:crates/exquisite"},enchantment_glint_override:true,lore:[{text:"Spoils worthy of a seasoned adventurer.",color:"dark_gray",italic:true}]}},PickupDelay:0s,Age:2400s}
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

function evercraft:quests/reputation/check_rank

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.4
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.5 1
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 50

tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Expedition Complete! ",color:"gold",bold:true},{text:"+500 XP ",color:"green"},{text:"+400 REP ",color:"aqua"},{text:"+5 Coins",color:"#E0B0FF"}]

# Achievement tracking
scoreboard players add @s ach.quests_done 1
scoreboard players add @s ec.sp_quests_done 1
function evercraft:milestones/increment/quest_done
scoreboard players add #news_quests ec.var 1
scoreboard players set #rp_quest_tier rp.temp 5
function evercraft:reaper/deeds/on_quest_complete
scoreboard players add @s ach.quest_rep 400
scoreboard players add @s ach.quest_xp 500
# Daily first-quest bonus (+50 XP for first quest each day)
execute if score @s ec.daily_quest matches 0 run experience add @s 50 points
execute if score @s ec.daily_quest matches 0 run tellraw @s [{text:"  ★ ",color:"yellow"},{text:"Daily Bonus! +50 XP",color:"green"}]
scoreboard players set @s ec.daily_quest 1

# Forever Coin reward: Expedition = 5 coins (no DR scaling)
scoreboard players add @s ec.coins 5
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:25}

# Guild Expedition: Quest bonus XP (activity=7)
function evercraft:guild/expedition/bonus_xp {base:500,activity:7}
