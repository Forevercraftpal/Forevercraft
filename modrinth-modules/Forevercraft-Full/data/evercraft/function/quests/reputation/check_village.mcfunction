# ============================================================
# Check Current Village
# Updates player's current village based on proximity
# Saves rep before switching, loads per-village rep on entry
# ============================================================

# Store previous village to detect changes
scoreboard players operation #prev_village quests.temp = @s ec.current_village

# Check if player is within 80 blocks of a village marker
# Store to temp first (NOT directly to ec.current_village) so we can save before overwriting
execute store result score #new_village quests.temp run scoreboard players get @e[type=armor_stand,tag=bestiary.village.name,distance=..80,limit=1,sort=nearest] ec.village_id

# No change — skip everything
execute if score #new_village quests.temp = #prev_village quests.temp run return 0

# --- Village has changed ---

# 1. Save current in-memory rep to the OLD village before it gets overwritten
#    ec.current_village still holds the old value at this point
execute if score @s ec.current_village matches 1.. run function evercraft:quests/reputation/save_village_rep

# 2. Determine if we need to load the new village's rep
#    Skip loading if leaving a village (new=0) — keep in-memory rep
#    Skip loading if returning to the same village we left (new=last_village) — rep still valid
scoreboard players set #need_load quests.temp 0
execute if score #new_village quests.temp matches 1.. unless score #new_village quests.temp = @s ec.last_village run scoreboard players set #need_load quests.temp 1

# 3. Update current village
scoreboard players operation @s ec.current_village = #new_village quests.temp

# 4. Track last valid village (only when entering a village)
execute if score @s ec.current_village matches 1.. run scoreboard players operation @s ec.last_village = @s ec.current_village

# 5. Load new village's rep (only when entering a DIFFERENT village)
execute if score #need_load quests.temp matches 1 run function evercraft:quests/reputation/load_village_rep

# 6. On-enter handlers
execute if score @s ec.current_village matches 1.. run function evercraft:village/exile/check_lockout
execute if score @s ec.current_village matches 1.. run function evercraft:village/specialization/on_enter
