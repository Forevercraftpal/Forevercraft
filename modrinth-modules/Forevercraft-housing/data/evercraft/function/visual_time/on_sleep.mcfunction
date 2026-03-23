# Visual Time — On Sleep (advancement reward, fires when player enters bed)
# Revoke immediately so it re-triggers next sleep
advancement revoke @s only evercraft:visual_time/on_sleep

# === SLEEP FADE ===
# With advance_time false, sleep skip is handled by tick.mcfunction (100-tick delay).
# Blindness gives a smooth blackout transition while waiting for all players to be in bed.
effect give @s blindness 3 0 true
