# Dreaming Realm — Vivid Dream Roll (DR 0-29)
# 1 in 365 chance — the legendary vivid dream

execute store result score #roll ec.temp run random value 1..365
execute unless score #roll ec.temp matches 1 run return 0

# Vivid dream triggered!
data modify storage evercraft:dreaming lucky_dream set value true

# Grant "Vivid Dreamer" achievement
advancement grant @s only evercraft:dreaming_realm/lucky_dreamer

function evercraft:dreaming_realm/enter/begin
