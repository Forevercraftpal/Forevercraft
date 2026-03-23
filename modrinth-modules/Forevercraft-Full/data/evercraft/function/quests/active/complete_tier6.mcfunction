# ============================================================
# Complete Tier 6 (Heroic) Quest
# ============================================================

scoreboard players set @s ec.quest_id_6 0
scoreboard players set @s ec.quest_prog_6 0
scoreboard players set @s ec.quest_expiry 0
scoreboard players set @s ec.quest_done_6 1
scoreboard players add @s ec.village_rep 500
experience add @s 1000 points
execute if score #cal_prosperity ec.var matches 1 run experience add @s 500 points
scoreboard players add @s adv.stat_quests 1

# Taskmaster bonus: +4% XP/rep per level
execute if score @s adv.taskmaster matches 1.. run scoreboard players set #base_quest_xp adv.temp 1000
execute if score @s adv.taskmaster matches 1.. run scoreboard players set #base_quest_rep adv.temp 500
execute if score @s adv.taskmaster matches 1.. run function evercraft:advantage/taskmaster/apply_bonus

# Village specialization bonus (+25% rep at specialized villages)
scoreboard players set #vs_base_rep vs.temp 500
function evercraft:village/quest_bonus

# Save updated reputation to village-specific storage
function evercraft:quests/reputation/save_village_rep

# Check inventory space before giving crate
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Grant Mythical Quest Crate (with enchant glint)
execute if score #inv_full ec.var matches 0 run give @s minecraft:barrel[minecraft:custom_name=[{text:"✦ ",color:"dark_purple"},{text:"Mythical Quest Crate",color:"gold",bold:true},{text:" ✦",color:"dark_purple"}],minecraft:container_loot={loot_table:"evercraft:crates/mythical"},minecraft:enchantment_glint_override=true,minecraft:lore=[{text:"An ancient treasure from the depths!",color:"gold",italic:true}]] 1
execute if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:[{text:"✦ ",color:"dark_purple"},{text:"Mythical Quest Crate",color:"gold",bold:true},{text:" ✦",color:"dark_purple"}],container_loot:{loot_table:"evercraft:crates/mythical"},enchantment_glint_override:true,lore:[{text:"An ancient treasure from the depths!",color:"gold",italic:true}]}},PickupDelay:0s,Age:2400s}
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Check for Legend rank
function evercraft:quests/reputation/check_rank

# Epic celebration effects
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
playsound minecraft:entity.ender_dragon.death player @s ~ ~ ~ 0.3 1.5
particle totem_of_undying ~ ~1 ~ 1 1 1 0.3 100
effect give @s minecraft:glowing 10 0 true

# Announce to server
tellraw @a ["",{text:"✦ ",color:"dark_purple"},{selector:"@s"},{text:" has completed a ",color:"gray"},{text:"HEROIC QUEST",color:"dark_purple",bold:true},{text:"!",color:"gray"}]

# Title for player
title @s times 10 70 30
title @s title {text:"HEROIC COMPLETE",color:"dark_purple",bold:true}
title @s subtitle {text:"The legends will remember...",color:"light_purple",italic:true}

tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"HEROIC Quest Complete! ",color:"dark_purple",bold:true},{text:"+1000 XP ",color:"green"},{text:"+500 REP ",color:"aqua"},{text:"+6 Coins",color:"#E0B0FF"}]

# Campfire Stories — record heroic quest completion
function evercraft:campfire_stories/record/quest_heroic

# Achievement tracking
scoreboard players add @s ach.quests_done 1
scoreboard players add @s ec.sp_quests_done 1
function evercraft:milestones/increment/quest_done
scoreboard players add #news_quests ec.var 1
scoreboard players set #rp_quest_tier rp.temp 6
function evercraft:reaper/deeds/on_quest_complete
scoreboard players add @s ach.quest_rep 500
scoreboard players add @s ach.quest_xp 1000
# Daily first-quest bonus (+50 XP for first quest each day)
execute if score @s ec.daily_quest matches 0 run experience add @s 50 points
execute if score @s ec.daily_quest matches 0 run tellraw @s [{text:"  ★ ",color:"yellow"},{text:"Daily Bonus! +50 XP",color:"green"}]
scoreboard players set @s ec.daily_quest 1

# Forever Coin reward: Heroic = 6 coins (no DR scaling)
scoreboard players add @s ec.coins 6
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:30}

# Guild Expedition: Quest bonus XP (activity=7)
function evercraft:guild/expedition/bonus_xp {base:1000,activity:7}
