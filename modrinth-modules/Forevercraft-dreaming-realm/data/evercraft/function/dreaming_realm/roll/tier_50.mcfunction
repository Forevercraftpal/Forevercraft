# Dreaming Realm — Tier 50 Roll (DR 50)
# 50% chance

execute store result score #roll ec.temp run random value 1..100
execute unless score #roll ec.temp matches 1..50 run return 0

data modify storage evercraft:dreaming lucky_dream set value false
function evercraft:dreaming_realm/enter/begin
