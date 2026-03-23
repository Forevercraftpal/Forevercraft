data merge storage evercraft:treasure/settings {\
  frequency: [\
    { id: "1", display: { text: "Minimal", type: "text" } },\
    { id: "2", display: { text: "Low", type: "text" } },\
    { id: "3", display: { text: "Standard", type: "text" } },\
    { id: "4", display: { text: "High", type: "text" } },\
    { id: "5", display: { text: "Extreme", type: "text" } }\
  ]\
}

# Minimal frequency mode (0.25x standard)
# Common: 1/2000 (0.05%), Uncommon: 1/4000 (0.025%), Rare: 1/10000 (0.01%), Ornate: 1/20000 (0.005%), Exquisite: 1/30000 (0.0033%), Mythical: 1/40000 (0.0025%)
execute store result score #chance_common ec.var run scoreboard players set #var ec.const 500
execute store result score #chance_uncommon ec.var run scoreboard players set #var ec.const 250
execute store result score #chance_rare ec.var run scoreboard players set #var ec.const 100
execute store result score #chance_epic ec.var run scoreboard players set #var ec.const 50
execute store result score #chance_exquisite ec.var run scoreboard players set #var ec.const 33
execute store result score #chance_mythical ec.var run scoreboard players set #var ec.const 25

function evercraft:treasure/settings/frequency/update_rates