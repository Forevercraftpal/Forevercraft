# Artifact Collection — Refresh Constellation Progress
# Recounts all 10 constellations and updates display text
# Run as the player

# Recount all constellations
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

# Store counts to storage for macro
execute store result storage evercraft:artifact_gui cn0 int 1 run scoreboard players get @s ec.cn_tide
execute store result storage evercraft:artifact_gui cn1 int 1 run scoreboard players get @s ec.cn_pyre
execute store result storage evercraft:artifact_gui cn2 int 1 run scoreboard players get @s ec.cn_verd
execute store result storage evercraft:artifact_gui cn3 int 1 run scoreboard players get @s ec.cn_frost
execute store result storage evercraft:artifact_gui cn4 int 1 run scoreboard players get @s ec.cn_earth
execute store result storage evercraft:artifact_gui cn5 int 1 run scoreboard players get @s ec.cn_star
execute store result storage evercraft:artifact_gui cn6 int 1 run scoreboard players get @s ec.cn_shade
execute store result storage evercraft:artifact_gui cn7 int 1 run scoreboard players get @s ec.cn_dune
execute store result storage evercraft:artifact_gui cn8 int 1 run scoreboard players get @s ec.cn_storm
execute store result storage evercraft:artifact_gui cn9 int 1 run scoreboard players get @s ec.cn_soul

# Update displays via macro
function evercraft:codex/hub/artifacts/refresh_constellations_inner with storage evercraft:artifact_gui
