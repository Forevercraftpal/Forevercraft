# Mob Crates - fox kill (1 in 83 chance)
advancement revoke @s only evercraft:mob_crates/kill/fox
function evercraft:bestiary/track/on_kill {score:"bs.k_fox",dscore:"bs.d_fox",threshold:5000,pow:"#pow15",field:"lo",mob:"fox",smob:"fox",group:2}
data modify storage evercraft:mob_crates chance set value "0.012"
data modify storage evercraft:mob_crates dscore set value "bs.d_fox"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
