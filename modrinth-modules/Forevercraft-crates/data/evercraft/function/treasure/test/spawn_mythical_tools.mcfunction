# Spawn ALL mythical tools (non-weapon, non-armor mythical items)
# Uses: /function evercraft:treasure/test/spawn_mythical_tools

tellraw @s {text:"Spawning all mythical tools...",color:"light_purple"}

loot give @s loot evercraft:artifacts/mythical/journey_pickaxe
loot give @s loot evercraft:artifacts/mythical/journey_shovel
loot give @s loot evercraft:artifacts/mythical/axe_of_honor
loot give @s loot evercraft:artifacts/mythical/hoe_of_honor

tellraw @s {text:"Gave all 4 mythical tools!",color:"green"}
