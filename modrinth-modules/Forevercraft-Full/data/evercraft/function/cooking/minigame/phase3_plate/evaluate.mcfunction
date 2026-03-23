# Phase 3: PLATE — Evaluate plating precision
# Runs as the player. Checks distance from golden zone center (70).

# Calculate distance from center (70)
scoreboard players set #ck_center ec.temp 70
scoreboard players operation #ck_dist ec.temp = @s ec.ck_v1
scoreboard players operation #ck_dist ec.temp -= #ck_center ec.temp
# Absolute value
execute if score #ck_dist ec.temp matches ..-1 run scoreboard players operation #ck_dist ec.temp *= #-1 ec.temp
scoreboard players set #-1 ec.temp -1
execute if score #ck_dist ec.temp matches ..-1 run scoreboard players operation #ck_dist ec.temp *= #-1 ec.temp

# Award quality by precision
# Perfect (within 3): +4, In zone (within 8): +2, Near miss (within 15): +1, Far: +0
execute if score #ck_dist ec.temp matches 0..3 run scoreboard players add @s ec.ck_quality 4
execute if score #ck_dist ec.temp matches 4..8 run scoreboard players add @s ec.ck_quality 2
execute if score #ck_dist ec.temp matches 9..15 run scoreboard players add @s ec.ck_quality 1

# Feedback
execute if score #ck_dist ec.temp matches 0..3 run tellraw @s [{text:"  ","color":"white"},{"text":"PERFECT PLATE! ","color":"#FFD700","bold":true},{"text":"(+4 quality)","color":"yellow"}]
execute if score #ck_dist ec.temp matches 0..3 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
execute if score #ck_dist ec.temp matches 4..8 run tellraw @s [{text:"  ","color":"white"},{"text":"Good plating! ","color":"green"},{"text":"(+2 quality)","color":"yellow"}]
execute if score #ck_dist ec.temp matches 4..8 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
execute if score #ck_dist ec.temp matches 9..15 run tellraw @s [{text:"  ","color":"white"},{"text":"Close... ","color":"yellow"},{"text":"(+1 quality)","color":"gray"}]
execute if score #ck_dist ec.temp matches 9..15 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 0.8
execute if score #ck_dist ec.temp matches 16.. run tellraw @s [{text:"  ","color":"white"},{"text":"Sloppy plating. ","color":"red"},{"text":"(+0 quality)","color":"gray"}]
execute if score #ck_dist ec.temp matches 16.. run playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.5 1.0

# Kill phase 3 entities
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CK.MiniEl,distance=..8] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=CK.MiniEl,distance=..8] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# --- Resolve the minigame ---
function evercraft:cooking/minigame/resolve
