# Advantage — Death Processing Per-Player
# OPT: 3 @a[scores={adv.death=1..}] scans → 1 per-player function

# Re-apply all prestige effects on respawn
function evercraft:advantage/effects/reapply_all

# Deathless (ID 8) / Immortal (ID 27): reset progress on death
execute if score @s adv.chal_id matches 8 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 27 run scoreboard players set @s adv.chal_prog 0

# Clear death flag
scoreboard players set @s adv.death 0
