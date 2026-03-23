# Bestiary GUI — Mob Detail Tellraw (Macro)
# Args: {mob:"blaze", name:"Blaze", score:"bs.k_blaze", dscore:"bs.d_blaze", threshold:5000, index:1, field:"lo", bit:1, smob:"blaze", group:2, cid:2}
# Run as the player
# Prints detailed bestiary stats for this mob to chat

# Store values for display
$execute store result score #bs_kills bs.temp run scoreboard players get @s $(score)
$execute store result score #bs_drops bs.temp run scoreboard players get @s $(dscore)

# Check completion
$scoreboard players operation #bs_comp bs.temp = @s bs.comp_$(field)
$scoreboard players operation #bs_comp bs.temp /= #pow$(bit) bs.temp
scoreboard players operation #bs_comp bs.temp %= #2 bs.temp

# Check hurt-by
$scoreboard players operation #bs_hurt bs.temp = @s bs.hurt_$(field)
$scoreboard players operation #bs_hurt bs.temp /= #pow$(bit) bs.temp
scoreboard players operation #bs_hurt bs.temp %= #2 bs.temp

# Read stage and claims
$execute store result score #bs_stage bs.temp run scoreboard players get @s bs.s_$(smob)
$execute store result score #bs_claims bs.temp run scoreboard players get @s bs.c_$(smob)

# Header
$tellraw @s ["",{"text":"","color":"gray","strikethrough":true,"extra":[{"text":"          "}]},{"text":" $(name) ","color":"gold","bold":true,"strikethrough":false},{"text":"","color":"gray","strikethrough":true,"extra":[{"text":"          "}]}]

# Kills line
$tellraw @s ["",{"text":"  Kills: ","color":"gray"},{"score":{"name":"@s","objective":"$(score)"},"color":"yellow"},{"text":" / $(threshold)","color":"gray"}]

# Hurt by line
execute if score #bs_hurt bs.temp matches 1 run tellraw @s ["",{"text":"  Hurt by: ","color":"gray"},{"text":"Yes","color":"green"}]
execute if score #bs_hurt bs.temp matches 0 run tellraw @s ["",{"text":"  Hurt by: ","color":"gray"},{"text":"No","color":"red"}]

# Drop tiers line — check each bit
# Common (bit 0)
scoreboard players operation #bs_d0 bs.temp = #bs_drops bs.temp
scoreboard players operation #bs_d0 bs.temp %= #2 bs.temp
# Uncommon (bit 1)
scoreboard players operation #bs_d1 bs.temp = #bs_drops bs.temp
scoreboard players operation #bs_d1 bs.temp /= #2 bs.temp
scoreboard players operation #bs_d1 bs.temp %= #2 bs.temp
# Rare (bit 2)
scoreboard players operation #bs_d2 bs.temp = #bs_drops bs.temp
scoreboard players operation #bs_d2 bs.temp /= #4 bs.temp
scoreboard players operation #bs_d2 bs.temp %= #2 bs.temp
# Ornate (bit 3)
scoreboard players operation #bs_d3 bs.temp = #bs_drops bs.temp
scoreboard players operation #bs_d3 bs.temp /= #8 bs.temp
scoreboard players operation #bs_d3 bs.temp %= #2 bs.temp
# Exquisite (bit 4)
scoreboard players operation #bs_d4 bs.temp = #bs_drops bs.temp
scoreboard players operation #bs_d4 bs.temp /= #16 bs.temp
scoreboard players operation #bs_d4 bs.temp %= #2 bs.temp
# Mythical (bit 5)
scoreboard players operation #bs_d5 bs.temp = #bs_drops bs.temp
scoreboard players operation #bs_d5 bs.temp /= #32 bs.temp
scoreboard players operation #bs_d5 bs.temp %= #2 bs.temp

# Drop tier display — each tier on its own line with checkmark
# Common
execute if score #bs_d0 bs.temp matches 1 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[x]","color":"white"},{"text":" Common","color":"white"}]
execute if score #bs_d0 bs.temp matches 0 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[ ]","color":"dark_gray"},{"text":" Common","color":"dark_gray"}]
# Uncommon
execute if score #bs_d1 bs.temp matches 1 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[x]","color":"green"},{"text":" Uncommon","color":"green"}]
execute if score #bs_d1 bs.temp matches 0 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[ ]","color":"dark_gray"},{"text":" Uncommon","color":"dark_gray"}]
# Rare
execute if score #bs_d2 bs.temp matches 1 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[x]","color":"aqua"},{"text":" Rare","color":"aqua"}]
execute if score #bs_d2 bs.temp matches 0 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[ ]","color":"dark_gray"},{"text":" Rare","color":"dark_gray"}]
# Ornate
execute if score #bs_d3 bs.temp matches 1 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[x]","color":"light_purple"},{"text":" Ornate","color":"light_purple"}]
execute if score #bs_d3 bs.temp matches 0 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[ ]","color":"dark_gray"},{"text":" Ornate","color":"dark_gray"}]
# Exquisite
execute if score #bs_d4 bs.temp matches 1 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[x]","color":"gold"},{"text":" Exquisite","color":"gold"}]
execute if score #bs_d4 bs.temp matches 0 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[ ]","color":"dark_gray"},{"text":" Exquisite","color":"dark_gray"}]
# Mythical
execute if score #bs_d5 bs.temp matches 1 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[x]","color":"red"},{"text":" Mythical","color":"red"}]
execute if score #bs_d5 bs.temp matches 0 run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"[ ]","color":"dark_gray"},{"text":" Mythical","color":"dark_gray"}]

# === STAGE DISPLAY ===
# Stage name with tier color
execute if score #bs_stage bs.temp matches 0 run tellraw @s ["",{"text":"  Stage: ","color":"gray"},{"text":"None","color":"dark_gray"},{"text":" (0/7)","color":"dark_gray"}]
execute if score #bs_stage bs.temp matches 1 run tellraw @s ["",{"text":"  Stage: ","color":"gray"},{"text":"Common","color":"white"},{"text":" (1/7)","color":"gray"}]
execute if score #bs_stage bs.temp matches 2 run tellraw @s ["",{"text":"  Stage: ","color":"gray"},{"text":"Uncommon","color":"green"},{"text":" (2/7)","color":"gray"}]
execute if score #bs_stage bs.temp matches 3 run tellraw @s ["",{"text":"  Stage: ","color":"gray"},{"text":"Rare","color":"aqua"},{"text":" (3/7)","color":"gray"}]
execute if score #bs_stage bs.temp matches 4 run tellraw @s ["",{"text":"  Stage: ","color":"gray"},{"text":"Ornate","color":"light_purple"},{"text":" (4/7)","color":"gray"}]
execute if score #bs_stage bs.temp matches 5 run tellraw @s ["",{"text":"  Stage: ","color":"gray"},{"text":"Exquisite","color":"gold"},{"text":" (5/7)","color":"gray"}]
execute if score #bs_stage bs.temp matches 6 run tellraw @s ["",{"text":"  Stage: ","color":"gray"},{"text":"Mythical","color":"red"},{"text":" (6/7)","color":"gray"}]
execute if score #bs_stage bs.temp matches 7 run tellraw @s ["",{"text":"  Stage: ","color":"gray"},{"text":"Spirit","color":"dark_purple","bold":true},{"text":" (7/7)","color":"gray"}]

# Bonus damage display
execute if score #bs_stage bs.temp matches 0 run tellraw @s ["",{"text":"  Bonus Damage: ","color":"gray"},{"text":"+0","color":"dark_gray"}]
execute if score #bs_stage bs.temp matches 1..2 run tellraw @s ["",{"text":"  Bonus Damage: ","color":"gray"},{"text":"+1","color":"yellow"}]
execute if score #bs_stage bs.temp matches 3..4 run tellraw @s ["",{"text":"  Bonus Damage: ","color":"gray"},{"text":"+2","color":"yellow"}]
execute if score #bs_stage bs.temp matches 5..6 run tellraw @s ["",{"text":"  Bonus Damage: ","color":"gray"},{"text":"+3","color":"yellow"}]
execute if score #bs_stage bs.temp matches 7 run tellraw @s ["",{"text":"  Bonus Damage: ","color":"gray"},{"text":"+4","color":"gold","bold":true}]

# Mastery status (kept for legacy display)
execute if score #bs_comp bs.temp matches 1 run tellraw @s ["",{"text":"  Mastery: ","color":"gray"},{"text":"MASTERED","color":"green","bold":true}]

# === CLAIM BUTTON ===
# Show clickable claim button if player has any stage > 0
$execute if score #bs_stage bs.temp matches 1.. run tellraw @s ["",{"text":"  "},{"text":"[CLAIM REWARD]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/trigger bs.claim set $(cid)"}},{"text":" (click to claim next available)","color":"dark_gray"}]
