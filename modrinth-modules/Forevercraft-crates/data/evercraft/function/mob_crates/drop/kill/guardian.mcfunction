# Mob Crates - guardian kill (1 in 17 chance)
advancement revoke @s only evercraft:mob_crates/kill/guardian
function evercraft:bestiary/track/on_kill {score:"bs.k_guardian",dscore:"bs.d_guardian",threshold:5000,pow:"#pow18",field:"lo",mob:"guardian",smob:"guardian",group:3}
data modify storage evercraft:mob_crates chance set value "0.06"
data modify storage evercraft:mob_crates dscore set value "bs.d_guardian"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
