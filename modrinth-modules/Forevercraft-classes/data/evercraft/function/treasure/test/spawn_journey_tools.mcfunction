# Spawn Journey Set tools (Pickaxe + Shovel)
# Uses: /function evercraft:treasure/test/spawn_journey_tools

tellraw @s {text:"Spawning Journey tools...",color:"light_purple"}

loot give @s loot evercraft:artifacts/mythical/journey_pickaxe
loot give @s loot evercraft:artifacts/mythical/journey_shovel

tellraw @s {text:"Gave Journey Pickaxe + Shovel!",color:"green"}
