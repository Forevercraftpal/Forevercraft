data merge storage evercraft:treasure/settings {\
  frequency: [\
    { id: "4", display: { text: "High", type: "text" } },\
    { id: "5", display: { text: "Extreme", type: "text" } },\
    { id: "1", display: { text: "Minimal", type: "text" } },\
    { id: "2", display: { text: "Low", type: "text" } },\
    { id: "3", display: { text: "Standard", type: "text" } }\
  ]\
}

# High frequency mode (2x standard)
# Common: 1/250 (0.4%), Uncommon: 1/500 (0.2%), Rare: 1/1250 (0.08%), Ornate: 1/2500 (0.04%), Exquisite: 1/3750 (0.027%), Mythical: 1/5000 (0.02%)
execute store result score #chance_common ec.var run scoreboard players set #var ec.const 4000
execute store result score #chance_uncommon ec.var run scoreboard players set #var ec.const 2000
execute store result score #chance_rare ec.var run scoreboard players set #var ec.const 800
execute store result score #chance_epic ec.var run scoreboard players set #var ec.const 400
execute store result score #chance_exquisite ec.var run scoreboard players set #var ec.const 266
execute store result score #chance_mythical ec.var run scoreboard players set #var ec.const 200

function evercraft:treasure/settings/frequency/update_rates