# Advantage Trees — Cooldown Decrements (per-player, called as @a)
# OPT: Single @a scan for all cooldowns (was 10 separate scans)

# Respec cooldown
execute if score @s adv.respec_cd matches 1.. run scoreboard players remove @s adv.respec_cd 20
# Evasion P3: guaranteed dodge timer
execute if score @s adv.pa_evas3_tm matches 1.. run scoreboard players remove @s adv.pa_evas3_tm 20
# Stealth P3: full invis timer + cooldown
execute if score @s adv.pa_stea3_tm matches 1.. run scoreboard players remove @s adv.pa_stea3_tm 20
execute if score @s adv.pa_stea3_cd matches 1.. run scoreboard players remove @s adv.pa_stea3_cd 20
# Agility P2/P3 cooldowns
execute if score @s adv.pa_agil2_cd matches 1.. run scoreboard players remove @s adv.pa_agil2_cd 20
execute if score @s adv.pa_agil3_cd matches 1.. run scoreboard players remove @s adv.pa_agil3_cd 20
# Explorer P1/P2/P3 cooldowns
execute if score @s adv.pa_expl1_cd matches 1.. run scoreboard players remove @s adv.pa_expl1_cd 20
execute if score @s adv.pa_expl2_cd matches 1.. run scoreboard players remove @s adv.pa_expl2_cd 20
execute if score @s adv.pa_expl3_cd matches 1.. run scoreboard players remove @s adv.pa_expl3_cd 20
# Vitality P2: death save cooldown
execute if score @s adv.pa_vita2_cd matches 1.. run scoreboard players remove @s adv.pa_vita2_cd 20
