 data merge storage evercraft:treasure/settings {\
  frequency: [\
    { id: "2", display: { text: "Low", type: "text" } },\
    { id: "3", display: { text: "Standard", type: "text" } },\
    { id: "4", display: { text: "High", type: "text" } },\
    { id: "5", display: { text: "Extreme", type: "text" } },\
    { id: "1", display: { text: "Minimal", type: "text" } }\
  ]\
}

# Low frequency mode (0.5x standard)
# Common: 1/1000 (0.1%), Uncommon: 1/2000 (0.05%), Rare: 1/5000 (0.02%), Ornate: 1/10000 (0.01%), Exquisite: 1/15000 (0.0067%), Mythical: 1/20000 (0.005%)
execute store result score #chance_common ec.var run scoreboard players set #var ec.const 1000
execute store result score #chance_uncommon ec.var run scoreboard players set #var ec.const 500
execute store result score #chance_rare ec.var run scoreboard players set #var ec.const 200
execute store result score #chance_epic ec.var run scoreboard players set #var ec.const 100
execute store result score #chance_exquisite ec.var run scoreboard players set #var ec.const 67
execute store result score #chance_mythical ec.var run scoreboard players set #var ec.const 50

function evercraft:treasure/settings/frequency/update_rates