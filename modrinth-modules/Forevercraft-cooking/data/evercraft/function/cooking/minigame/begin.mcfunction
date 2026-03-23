# ============================================================
# Chef's Touch Minigame — Begin
# Runs as the player, #ck_slot ec.temp = recipe slot clicked
# Saves state, transitions GUI to minigame, starts Phase 1
# Ingredients are NOT consumed here — cook_dispatch runs at resolve
# ============================================================

# --- Save slot and category for resolve ---
scoreboard players operation @s ec.ck_saved_slot = #ck_slot ec.temp
scoreboard players operation @s ec.ck_saved_cat = @s ec.ck_cat

# --- Determine meal tier from slot ---
# Slots 0-1 = hearty (tier 1), 2-3 = gourmet (tier 2), 4-5 = feast (tier 3)
# Category 10 (spirit) always tier 4
scoreboard players set @s ec.ck_tier 1
execute if score #ck_slot ec.temp matches 2..3 run scoreboard players set @s ec.ck_tier 2
execute if score #ck_slot ec.temp matches 4..5 run scoreboard players set @s ec.ck_tier 3
execute if score @s ec.ck_cat matches 10 run scoreboard players set @s ec.ck_tier 4

# --- Kill recipe/tab entities (keep title, close, anchor) ---
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,distance=..8,tag=CK.MenuEl,tag=!CK.Title] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,distance=..8,tag=CK.MenuEl,tag=!CK.CloseClick] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# --- Initialize minigame state ---
tag @s add CK.Cooking
scoreboard players set @s ec.ck_phase 1
scoreboard players set @s ec.ck_quality 0
scoreboard players set @s ec.ck_timer 0

# --- Update title ---
execute as @e[type=text_display,tag=CK.Title,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"✦ ","color":"gold"},{"text":"Chef's Touch","color":"gold","bold":true},{"text":" ✦","color":"gold"}]

# Sound
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.8 1.2

# --- Start Phase 1: CHOP ---
function evercraft:cooking/minigame/phase1_chop/start
