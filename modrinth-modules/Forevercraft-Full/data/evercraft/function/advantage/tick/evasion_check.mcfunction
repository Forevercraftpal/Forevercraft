# Evasion — Check for dodge on taking damage
# Fired by advancement trigger, NOT per-tick
# 0.25% dodge chance per level (max 6.25% at level 25)

# Only process if player has evasion levels or dancer bonus
execute unless score @s adv.evasion matches 1.. unless score @s ec.dn_evasion_add matches 1.. run return run advancement revoke @s only evercraft:advantage/evasion_trigger

# Calculate chance: (level + dancer bonus) * 25 (per 10000 roll = 0.25% per level)
scoreboard players operation #chance adv.temp = @s adv.evasion
scoreboard players operation #chance adv.temp += @s ec.dn_evasion_add
scoreboard players operation #chance adv.temp *= #25 adv.temp

# Roll 1-10000
execute store result score #roll adv.temp run random value 1..10000

# Evasion P3: Perfect Evasion — guaranteed dodge if timer active
execute if score @s adv.pa_evas3_tm matches 1.. run scoreboard players set #chance adv.temp 10000

# If roll <= chance, dodge
execute if score #roll adv.temp <= #chance adv.temp run function evercraft:advantage/effects/evasion_dodge

# Revoke advancement to re-trigger on next hit
advancement revoke @s only evercraft:advantage/evasion_trigger
