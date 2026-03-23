# Phase 1: CHOP — Evaluate chop attempt
# Runs as the player. Checks if marker is in sweet zone.

# Determine sweet zone by tier
# Tier 1: 35-65, Tier 2: 38-62, Tier 3: 40-60, Tier 4: 43-57
scoreboard players set #ck_hit ec.temp 0
execute if score @s ec.ck_tier matches 1 if score @s ec.ck_v1 matches 35..65 run scoreboard players set #ck_hit ec.temp 1
execute if score @s ec.ck_tier matches 2 if score @s ec.ck_v1 matches 38..62 run scoreboard players set #ck_hit ec.temp 1
execute if score @s ec.ck_tier matches 3 if score @s ec.ck_v1 matches 40..60 run scoreboard players set #ck_hit ec.temp 1
execute if score @s ec.ck_tier matches 4 if score @s ec.ck_v1 matches 43..57 run scoreboard players set #ck_hit ec.temp 1

# Increment chop count regardless
scoreboard players add @s ec.ck_v5 1

# Award quality if hit
execute if score #ck_hit ec.temp matches 1 run scoreboard players add @s ec.ck_quality 1
execute if score #ck_hit ec.temp matches 1 run playsound minecraft:entity.player.attack.crit master @s ~ ~ ~ 0.8 1.2
execute if score #ck_hit ec.temp matches 1 run tellraw @s [{text:"  ","color":"white"},{"text":"CHOP! ","color":"green","bold":true},{"text":"(+1 quality)","color":"yellow"}]

# Miss feedback
execute if score #ck_hit ec.temp matches 0 run playsound minecraft:entity.player.attack.nodamage master @s ~ ~ ~ 0.5 0.8
execute if score #ck_hit ec.temp matches 0 run tellraw @s [{text:"  ","color":"white"},{"text":"Miss...","color":"red"}]

# Speed up marker after each chop attempt
scoreboard players add @s ec.ck_v3 1

# Update progress display
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
data modify storage evercraft:cooking chop_done set value "0"
execute store result storage evercraft:cooking chop_done int 1 run scoreboard players get @s ec.ck_v5
data modify storage evercraft:cooking chop_need set value "3"
execute store result storage evercraft:cooking chop_need int 1 run scoreboard players get @s ec.ck_v4
data modify storage evercraft:cooking chop_qual set value "0"
execute store result storage evercraft:cooking chop_qual int 1 run scoreboard players get @s ec.ck_quality
function evercraft:cooking/minigame/phase1_chop/update_progress with storage evercraft:cooking

# Check if enough chops done
execute if score @s ec.ck_v5 >= @s ec.ck_v4 run function evercraft:cooking/minigame/phase1_chop/complete
