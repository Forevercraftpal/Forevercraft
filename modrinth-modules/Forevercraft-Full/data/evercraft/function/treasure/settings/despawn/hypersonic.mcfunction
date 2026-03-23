data merge storage evercraft:treasure/settings {\
  despawn: [\
    { id: "5", display: { text: "Hypersonic", type: "text" } },\
    { id: "1", display: { text: "Sloth", type: "text" } },\
    { id: "2", display: { text: "Slow", type: "text" } },\
    { id: "3", display: { text: "Standard", type: "text" } },\
    { id: "4", display: { text: "Fast", type: "text" } }\
  ]\
}

data modify storage evercraft:treasure/settings despawn_speed set value 'hypersonic'