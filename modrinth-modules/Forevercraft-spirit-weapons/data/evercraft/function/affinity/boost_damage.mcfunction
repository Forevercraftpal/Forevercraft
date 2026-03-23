# === CALCULATE BOOSTED DAMAGE ===
# @s = attacker (player), #aff_base ec.temp = base damage
# Output: storage evercraft:affinity temp.total = total damage (base + bonus)
scoreboard players operation #aff_total ec.temp = #aff_base ec.temp
scoreboard players operation #aff_bonus ec.temp = #aff_base ec.temp
scoreboard players operation #aff_bonus ec.temp *= @s ec.aff_boost
scoreboard players operation #aff_bonus ec.temp /= #100 adv.temp
scoreboard players operation #aff_total ec.temp += #aff_bonus ec.temp
execute store result storage evercraft:affinity temp.total int 1 run scoreboard players get #aff_total ec.temp
