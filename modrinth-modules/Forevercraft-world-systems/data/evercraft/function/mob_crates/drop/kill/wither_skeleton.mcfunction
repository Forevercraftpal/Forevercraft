# Mob Crates - wither_skeleton kill (1 in 8 chance)
advancement revoke @s only evercraft:mob_crates/kill/wither_skeleton
function evercraft:bestiary/track/on_kill {score:"bs.k_withskel",dscore:"bs.d_withskel",threshold:5000,pow:"#pow15",field:"hi",mob:"wither_skeleton",smob:"withskel",group:3}
data modify storage evercraft:mob_crates chance set value "0.12"
data modify storage evercraft:mob_crates dscore set value "bs.d_withskel"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
