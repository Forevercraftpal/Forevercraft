# Set up a newly placed Transmutation Stand
# Run at the block-aligned position of the lodestone

# Stop raycast / fallback scan
tag @s remove ec.searching

# Spawn marker at block position
summon marker ~0.5 ~ ~0.5 {Tags:["TX.Marker","ec.lodestone_registered"]}

# Spawn interaction entity on top of the lodestone block (clickable)
summon interaction ~0.5 ~1.0 ~0.5 {Tags:["TX.Interact"],width:0.9f,height:0.5f,response:1b}

# Spawn overlay display (amethyst gem texture)
data modify storage evercraft:transmute temp_skin set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjhkN2VlNWY0NGMyNDc4ZmZlYmM0MTFmMTA3MDViYmFhNTA0NTY3NDVlMjYyMGVmNGVhOGUwYmZmMDc2MGVjNCJ9fX0="
function evercraft:transmute/spawn_display with storage evercraft:transmute

# Ambient particles (purple enchant)
particle minecraft:reverse_portal ~0.5 ~1.2 ~0.5 0.2 0.2 0.2 0.02 5

# Announce
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Transmutation Stand placed! Right-click to open.",color:"light_purple"}]
playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.6 0.8
