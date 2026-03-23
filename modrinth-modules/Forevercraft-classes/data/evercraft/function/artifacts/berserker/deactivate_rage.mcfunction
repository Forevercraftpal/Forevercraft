# Berserker Rage — Deactivation
# Called when rage timer hits 0 or player unequips during rage

# Clear rage-related effects
effect clear @s strength
effect clear @s regeneration

# Apply weakness for 15 seconds
effect give @s weakness 15 0 false

# Start cooldown (90 seconds = 1.5 minutes)
scoreboard players set @s ec.bk_cd 90

# Reset rage timer and swing timer
scoreboard players set @s ec.bk_rage 0
scoreboard players set @s ec.bk_swing 0

# === FEEDBACK ===
title @s actionbar {"text":"Rage subsided... weakness takes hold","color":"gray","italic":true}
playsound minecraft:entity.warden.ambient player @s ~ ~ ~ 0.5 1.5
