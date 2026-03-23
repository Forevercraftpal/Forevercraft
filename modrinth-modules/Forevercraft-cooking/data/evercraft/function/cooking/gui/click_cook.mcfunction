# ============================================================
# Campfire Kitchen GUI — Cook Button Click Handler (Macro)
# Runs as the interaction entity, at its position
# Args: {slot: 0-5}
# ============================================================

# Clear click data
data remove entity @s interaction

# Store which slot was clicked
$scoreboard players set #ck_slot ec.temp $(slot)

# Branch on cooking mode: 0=Quick Cook (instant), 1=Chef's Touch (minigame)
execute as @a[tag=CK.InMenu,distance=..5,limit=1] if score @s ec.ck_mode matches 1 run return run function evercraft:cooking/minigame/begin

# Quick Cook: standard instant cook (set quality_mod to 1 = standard)
execute as @a[tag=CK.InMenu,distance=..5,limit=1] run scoreboard players set @s ec.ck_quality_mod 1
execute as @a[tag=CK.InMenu,distance=..5,limit=1] run function evercraft:cooking/recipes/cook_dispatch
