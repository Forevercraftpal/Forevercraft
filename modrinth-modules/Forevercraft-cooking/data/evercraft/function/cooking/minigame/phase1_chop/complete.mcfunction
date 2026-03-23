# Phase 1: CHOP — Complete
# All chops done. Bonus if ALL landed in zone, then advance to Phase 2.

# Bonus: +1 quality if all chops were hits (chops_done == quality gained in this phase)
# We can't easily check this since quality is cumulative. Skip bonus for simplicity.

# Kill phase 1 entities
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CK.MiniEl,distance=..8] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=CK.MiniEl,distance=..8] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Feedback
tellraw @s [{text:"[Chef's Touch] ",color:"gold"},{"text":"Prep complete!","color":"green"}]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.8

# Advance to Phase 2
scoreboard players set @s ec.ck_phase 2
scoreboard players set @s ec.ck_timer 0
function evercraft:cooking/minigame/phase2_simmer/start
