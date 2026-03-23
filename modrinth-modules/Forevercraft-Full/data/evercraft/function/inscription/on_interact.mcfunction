# ============================================================
# Inscription Stones — On Interact
# Fires when player right-clicks an inscription's interaction hitbox.
# If holding shears: scrape the rune off and return the glyph.
# Otherwise: show what glyph is inscribed here.
# ============================================================

# Revoke so it can fire again
advancement revoke @s only evercraft:inscription/interact_stone

# Shears → scrape the rune off
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"}}] at @s as @e[type=interaction,tag=ec.inscr_interact,distance=..5,limit=1,sort=nearest] at @s as @e[type=marker,tag=ec.inscr_stone,distance=..1,limit=1] at @s run function evercraft:inscription/scrape
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"}}] run return 0

# No shears → inspect the inscription
execute at @s as @e[type=interaction,tag=ec.inscr_interact,distance=..5,limit=1,sort=nearest] at @s as @e[type=marker,tag=ec.inscr_stone,distance=..1,limit=1] at @s run function evercraft:inscription/inspect
