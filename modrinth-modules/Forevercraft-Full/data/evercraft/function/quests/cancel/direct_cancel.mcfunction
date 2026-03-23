# Direct Cancel Quest from Tracker (trigger 31-36)
# Macro: {tier:N}
# Run as player
# Features: scaling penalty, partial progress refund, cooldown

# 1. Check cooldown
$execute if score @s ec.qc_cd_$(tier) matches 1.. run return run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"That tier is on cooldown! Wait for it to expire.","color":"red"}]

# 2. Check if quest exists
$execute unless score @s ec.quest_id_$(tier) matches 1.. run return run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"No quest active in that tier.","color":"gray"}]

# 3. Store tier number for conditional branching
$scoreboard players set #cancel_tier quests.temp $(tier)

# 4. Calculate penalty based on daily cancel count
# First cancel = free, 2nd = 25, 3rd = 50, 4th+ = 100
scoreboard players set #penalty quests.temp 0
execute if score @s ec.qc_today matches 1 run scoreboard players set #penalty quests.temp 25
execute if score @s ec.qc_today matches 2 run scoreboard players set #penalty quests.temp 50
execute if score @s ec.qc_today matches 3.. run scoreboard players set #penalty quests.temp 100

# 5. Partial progress refund — if progress > 0, halve penalty
$execute if score @s ec.quest_prog_$(tier) matches 1.. if score #penalty quests.temp matches 2.. run scoreboard players set #divisor quests.temp 2
$execute if score @s ec.quest_prog_$(tier) matches 1.. if score #penalty quests.temp matches 2.. run scoreboard players operation #penalty quests.temp /= #divisor quests.temp

# 6. Apply penalty (subtract rep)
execute if score #penalty quests.temp matches 1.. run scoreboard players operation @s ec.village_rep -= #penalty quests.temp
execute if score #penalty quests.temp matches 1.. run function evercraft:quests/reputation/save_village_rep

# 7. Clear quest
$scoreboard players set @s ec.quest_id_$(tier) 0
$scoreboard players set @s ec.quest_prog_$(tier) 0

# Clear heroic expiry if tier 6
execute if score #cancel_tier quests.temp matches 6 run scoreboard players set @s ec.quest_expiry 0

# 8. Set cooldown (ticks until tier available again)
execute if score #cancel_tier quests.temp matches 1 run scoreboard players set @s ec.qc_cd_1 6000
execute if score #cancel_tier quests.temp matches 2 run scoreboard players set @s ec.qc_cd_2 9000
execute if score #cancel_tier quests.temp matches 3 run scoreboard players set @s ec.qc_cd_3 12000
execute if score #cancel_tier quests.temp matches 4 run scoreboard players set @s ec.qc_cd_4 12000
execute if score #cancel_tier quests.temp matches 5 run scoreboard players set @s ec.qc_cd_5 18000
execute if score #cancel_tier quests.temp matches 6 run scoreboard players set @s ec.qc_cd_6 36000

# 9. Increment cancel counter
scoreboard players add @s ec.qc_today 1

# 10. Effects
playsound minecraft:entity.item.break player @s ~ ~ ~ 0.5 0.8

# 11. Feedback
execute if score #penalty quests.temp matches 0 run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"Quest cancelled. ","color":"yellow"},{"text":"(Free cancel)","color":"green"}]
execute if score #penalty quests.temp matches 1.. run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"Quest cancelled. ","color":"yellow"},{"text":"-","color":"red"},{"score":{"name":"#penalty","objective":"quests.temp"},"color":"red"},{"text":" reputation.","color":"red"}]
