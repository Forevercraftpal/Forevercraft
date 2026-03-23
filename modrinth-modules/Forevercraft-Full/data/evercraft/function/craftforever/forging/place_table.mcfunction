# Artisan Forge — Setup placed block
# Spawns marker at block center, interaction entity on top, and display overlay

tag @s remove ec.searching

# Spawn marker at block center with forge state data
summon marker ~0.5 ~ ~0.5 {Tags:["CF.Marker","ec.lodestone_registered"],data:{cf_state:0,cf_recipe:0,cf_mat_tier:-1,cf_cat_tier:-1}}

# Spawn interaction entity on top of block for right-click detection
summon interaction ~0.5 ~1.0 ~0.5 {Tags:["CF.Interact"],width:0.9f,height:0.5f,response:1b}

# Spawn custom head display (dark iron anvil with arcane glow)
function evercraft:craftforever/forging/spawn_display with storage evercraft:craftforever

# Feedback
tellraw @p[distance=..8] [{text:"Artisan Forge placed! ",color:"light_purple"},{text:"Right-click to open.",color:"gray"}]
playsound minecraft:block.anvil.place master @a[distance=..16] ~ ~ ~ 0.8 0.8
particle minecraft:flame ~0.5 ~1.2 ~0.5 0.3 0.2 0.3 0.02 15
