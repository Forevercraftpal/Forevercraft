# Bestiary — Kill: trader_llama (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/trader_llama
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_trllama 15
function evercraft:bestiary/track/on_kill {score:"bs.k_trllama",dscore:"bs.d_trllama",threshold:1,pow:"#pow9",field:"hi",mob:"trader_llama",smob:"trllama",group:2}
