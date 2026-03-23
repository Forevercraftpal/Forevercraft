# Mob Crates - dolphin kill (1 in 83 chance)
advancement revoke @s only evercraft:mob_crates/kill/dolphin
function evercraft:bestiary/track/on_kill {score:"bs.k_dolphin",dscore:"bs.d_dolphin",threshold:5000,pow:"#pow8",field:"lo",mob:"dolphin",smob:"dolphin",group:2}
data modify storage evercraft:mob_crates chance set value "0.012"
data modify storage evercraft:mob_crates dscore set value "bs.d_dolphin"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
