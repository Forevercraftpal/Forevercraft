# Spirit Raids — Build Raid Room
# Constructs an arena at Y=400 and teleports all raid players there
# Each boss gets a unique room layout (future: per-boss build functions)

# Summon center marker at raid room position
# Using overworld coordinates above build limit
execute in minecraft:overworld run summon marker 0 401 0 {Tags:["rd.center","ec.entity"]}

# Build a basic arena platform (50x50 stone brick floor)
execute in minecraft:overworld run fill -25 400 -25 25 400 25 minecraft:stone_bricks
# Walls (4 sides, 10 blocks high)
execute in minecraft:overworld run fill -26 401 -26 26 410 -26 minecraft:deepslate_bricks
execute in minecraft:overworld run fill -26 401 26 26 410 26 minecraft:deepslate_bricks
execute in minecraft:overworld run fill -26 401 -26 -26 410 26 minecraft:deepslate_bricks
execute in minecraft:overworld run fill 26 401 -26 26 410 26 minecraft:deepslate_bricks
# Ceiling
execute in minecraft:overworld run fill -26 411 -26 26 411 26 minecraft:deepslate_bricks
# Clear interior air
execute in minecraft:overworld run fill -25 401 -25 25 410 25 minecraft:air

# Lighting (glowstone embedded in floor corners and walls)
execute in minecraft:overworld run fill -20 400 -20 -20 400 -20 minecraft:glowstone
execute in minecraft:overworld run fill 20 400 -20 20 400 -20 minecraft:glowstone
execute in minecraft:overworld run fill -20 400 20 -20 400 20 minecraft:glowstone
execute in minecraft:overworld run fill 20 400 20 20 400 20 minecraft:glowstone
execute in minecraft:overworld run fill 0 400 -20 0 400 -20 minecraft:glowstone
execute in minecraft:overworld run fill 0 400 20 0 400 20 minecraft:glowstone
execute in minecraft:overworld run fill -20 400 0 -20 400 0 minecraft:glowstone
execute in minecraft:overworld run fill 20 400 0 20 400 0 minecraft:glowstone

# Teleport all raid players to the raid room
execute in minecraft:overworld run tp @a[tag=rd.player] 0 401 0

# Title announcement
title @a[tag=rd.player] times 10 40 20
title @a[tag=rd.player] title {text:"RAID ROOM",color:"dark_red",bold:true}
title @a[tag=rd.player] subtitle {text:"Prepare yourself...",color:"red"}
