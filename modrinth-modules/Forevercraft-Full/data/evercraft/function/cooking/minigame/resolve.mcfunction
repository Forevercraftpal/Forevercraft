# ============================================================
# Chef's Touch Minigame — Resolve
# Runs as the player after all 3 phases complete.
# Applies bonuses, determines quality tier, runs cook_dispatch.
# ============================================================

# --- Apply bonuses ---
# Home Kitchen bonus
execute if score @s hs.in_zone matches 1 run scoreboard players add @s ec.ck_quality 1
execute if score @s hs.in_zone matches 1 run tellraw @s [{text:"  [Home Kitchen] ",color:"gold"},{"text":"+1 quality bonus","color":"yellow"}]

# Culinary Expertise perk bonus (Advantage tree passive 1)
execute if score @s adv.pa_culi1 matches 1 run scoreboard players add @s ec.ck_quality 1
execute if score @s adv.pa_culi1 matches 1 run tellraw @s [{text:"  [Culinary Expertise] ",color:"gold"},{"text":"+1 quality bonus","color":"yellow"}]

# --- Show final quality ---
tellraw @s [{text:"[Chef's Touch] ",color:"gold"},{"text":"Final Quality: ","color":"gray"},{"score":{"name":"@s","objective":"ec.ck_quality"},"color":"white","bold":true}]

# --- Determine outcome tier ---
scoreboard players set @s ec.ck_quality_mod 1
execute if score @s ec.ck_quality matches ..3 run scoreboard players set @s ec.ck_quality_mod 0
execute if score @s ec.ck_quality matches 8..11 run scoreboard players set @s ec.ck_quality_mod 2
execute if score @s ec.ck_quality matches 12.. run scoreboard players set @s ec.ck_quality_mod 3

# --- Result feedback ---
execute if score @s ec.ck_quality matches ..3 run function evercraft:cooking/minigame/result_charred
execute if score @s ec.ck_quality matches 4..7 run function evercraft:cooking/minigame/result_bland
execute if score @s ec.ck_quality matches 8..11 run function evercraft:cooking/minigame/result_flavorful
execute if score @s ec.ck_quality matches 12.. run function evercraft:cooking/minigame/result_masterwork

# --- Now run the actual cook dispatch (restoring saved slot/cat) ---
scoreboard players operation #ck_slot ec.temp = @s ec.ck_saved_slot
scoreboard players operation @s ec.ck_cat = @s ec.ck_saved_cat
function evercraft:cooking/recipes/cook_dispatch

# --- Cleanup ---
tag @s remove CK.Cooking
scoreboard players set @s ec.ck_phase 0

# --- Close menu ---
function evercraft:cooking/gui/close
