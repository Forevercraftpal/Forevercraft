# Artifact Collection — Refresh Tier Counts
# Counts discovered artifacts per tier and updates display
# Run as the player

# Count per tier (calls dedicated count functions)
function evercraft:codex/hub/artifacts/count/count_common
execute store result storage evercraft:artifact_gui common_count int 1.0 run scoreboard players get @s adv.temp
function evercraft:codex/hub/artifacts/count/count_uncommon
execute store result storage evercraft:artifact_gui uncommon_count int 1.0 run scoreboard players get @s adv.temp
function evercraft:codex/hub/artifacts/count/count_rare
execute store result storage evercraft:artifact_gui rare_count int 1.0 run scoreboard players get @s adv.temp
function evercraft:codex/hub/artifacts/count/count_ornate
execute store result storage evercraft:artifact_gui ornate_count int 1.0 run scoreboard players get @s adv.temp
function evercraft:codex/hub/artifacts/count/count_exquisite
execute store result storage evercraft:artifact_gui exquisite_count int 1.0 run scoreboard players get @s adv.temp
function evercraft:codex/hub/artifacts/count/count_mythical
execute store result storage evercraft:artifact_gui mythical_count int 1.0 run scoreboard players get @s adv.temp

# Count completed constellations for the button
function evercraft:constellations/count/tide
function evercraft:constellations/count/pyre
function evercraft:constellations/count/verdant
function evercraft:constellations/count/frozen
function evercraft:constellations/count/earth
function evercraft:constellations/count/star
function evercraft:constellations/count/shadow
function evercraft:constellations/count/dune
function evercraft:constellations/count/storm
function evercraft:constellations/count/soul
scoreboard players set #const_done adv.temp 0
execute if score @s ec.cn_tide matches 10.. run scoreboard players add #const_done adv.temp 1
execute if score @s ec.cn_pyre matches 11.. run scoreboard players add #const_done adv.temp 1
execute if score @s ec.cn_verd matches 10.. run scoreboard players add #const_done adv.temp 1
execute if score @s ec.cn_frost matches 10.. run scoreboard players add #const_done adv.temp 1
execute if score @s ec.cn_earth matches 10.. run scoreboard players add #const_done adv.temp 1
execute if score @s ec.cn_star matches 8.. run scoreboard players add #const_done adv.temp 1
execute if score @s ec.cn_shade matches 10.. run scoreboard players add #const_done adv.temp 1
execute if score @s ec.cn_dune matches 10.. run scoreboard players add #const_done adv.temp 1
execute if score @s ec.cn_storm matches 10.. run scoreboard players add #const_done adv.temp 1
execute if score @s ec.cn_soul matches 10.. run scoreboard players add #const_done adv.temp 1
execute store result storage evercraft:artifact_gui const_count int 1 run scoreboard players get #const_done adv.temp

# Update displays via macro
function evercraft:codex/hub/artifacts/refresh_tiers_inner with storage evercraft:artifact_gui
