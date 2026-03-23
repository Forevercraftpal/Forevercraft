# Shield Shift+Use Handler — runs as player using shield while sneaking
# Routes to Shield Bash (mainhand) or Offhand Ability (offhand)

# Revoke for re-detection
advancement revoke @s only evercraft:artifacts/shields/shift_use_shield

# Anti-spam: prevent firing every tick while holding right-click (1s, decremented in shield tick)
execute if score @s ec.tk_use_cd matches 1.. run return 0
scoreboard players set @s ec.tk_use_cd 1

# Check mainhand first → Shield Bash
execute if items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b}] run return run function evercraft:artifacts/shields/bash/activate

# Check offhand → Offhand Ability
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tank:1b}] run function evercraft:artifacts/shields/offhand/activate
