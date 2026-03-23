# Mob Crates - wolf kill (1 in 83 chance)
advancement revoke @s only evercraft:mob_crates/kill/wolf
function evercraft:bestiary/track/on_kill {score:"bs.k_wolf",dscore:"bs.d_wolf",threshold:5000,pow:"#pow16",field:"hi",mob:"wolf",smob:"wolf",group:2}
data modify storage evercraft:mob_crates chance set value "0.012"
data modify storage evercraft:mob_crates dscore set value "bs.d_wolf"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
