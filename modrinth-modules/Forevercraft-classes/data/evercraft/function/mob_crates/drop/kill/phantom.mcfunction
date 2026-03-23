# Mob Crates - phantom kill (1 in 17 chance)
advancement revoke @s only evercraft:mob_crates/kill/phantom
function evercraft:bestiary/track/on_kill {score:"bs.k_phantom",dscore:"bs.d_phantom",threshold:5000,pow:"#pow27",field:"lo",mob:"phantom",smob:"phantom",group:2}
data modify storage evercraft:mob_crates chance set value "0.06"
data modify storage evercraft:mob_crates dscore set value "bs.d_phantom"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
