# Mob Crates - creeper kill (1 in 17 chance)
advancement revoke @s only evercraft:mob_crates/kill/creeper
function evercraft:bestiary/track/on_kill {score:"bs.k_creeper",dscore:"bs.d_creeper",threshold:5000,pow:"#pow7",field:"lo",mob:"creeper",smob:"creeper",group:2}
data modify storage evercraft:mob_crates chance set value "0.06"
data modify storage evercraft:mob_crates dscore set value "bs.d_creeper"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
