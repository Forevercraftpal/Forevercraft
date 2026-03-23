# Artifact Constellations — Check all constellations for progress/completion
# Called after every artifact discovery (via grant_first_artifact)
# Run as: player

# Count artifacts in each constellation
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

# Check completion thresholds — each complete function guards against double-fire
execute if score @s ec.cn_tide matches 10.. run function evercraft:constellations/complete/tide
execute if score @s ec.cn_pyre matches 11.. run function evercraft:constellations/complete/pyre
execute if score @s ec.cn_verd matches 10.. run function evercraft:constellations/complete/verdant
execute if score @s ec.cn_frost matches 10.. run function evercraft:constellations/complete/frozen
execute if score @s ec.cn_earth matches 10.. run function evercraft:constellations/complete/earth
execute if score @s ec.cn_star matches 8.. run function evercraft:constellations/complete/star
execute if score @s ec.cn_shade matches 10.. run function evercraft:constellations/complete/shadow
execute if score @s ec.cn_dune matches 10.. run function evercraft:constellations/complete/dune
execute if score @s ec.cn_storm matches 10.. run function evercraft:constellations/complete/storm
execute if score @s ec.cn_soul matches 10.. run function evercraft:constellations/complete/soul

# Recalculate Dream Rate bonus from completed constellations
function evercraft:constellations/reward/apply_dr_bonus
