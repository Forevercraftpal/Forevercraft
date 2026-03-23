# BONK! — Frying Pan (Uncommon Striker)
# On kill: anvil sound at max volume + "BONK!" actionbar to all nearby players

advancement revoke @s only evercraft:artifacts/abilities/bonk_trigger

# The almighty BONK
playsound minecraft:block.anvil.land player @a[distance=..30] ~ ~ ~ 1.0 0.6
title @a[distance=..30] actionbar {"text":"BONK!","color":"gold","bold":true}

# Particles at death location
execute at @s run particle crit ~ ~1 ~ 0.5 0.5 0.5 0.2 15
execute at @s run particle explosion ~ ~1 ~ 0.3 0.3 0.3 0.05 3

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
