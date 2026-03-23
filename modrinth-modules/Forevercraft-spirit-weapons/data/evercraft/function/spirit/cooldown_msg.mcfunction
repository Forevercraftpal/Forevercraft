# Spirit Artifact — Cooldown message when ability is on CD
# Run as @s (the player)

playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.5
title @s actionbar [{"text":"Ability on cooldown","color":"red"}]
