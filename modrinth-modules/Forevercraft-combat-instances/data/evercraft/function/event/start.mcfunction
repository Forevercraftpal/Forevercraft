# Dream Surge Event — START
# Operator-only command: /function evercraft:event/start
# Boosts Dreams to 25%, locks crates to Ornate+, doubles mythical chance for 1 hour

# Prevent double-activation
execute if score #ec_event_active ec.var matches 1 run tellraw @a [{text:"[Dream Surge] ",color:"light_purple"},{text:"Event is already active!",color:"red"}]
execute if score #ec_event_active ec.var matches 1 run return 0

# Activate event
scoreboard players set #ec_event_active ec.var 1
scoreboard players set #ec_event_timer ec.var 72000

# Reset surge crate counter for all players
execute as @a run scoreboard players set @s ach.surge_crates 0

# Apply +25 dream rate modifier to all online players
execute as @a run attribute @s luck modifier remove ec_event_dream_surge
execute as @a run attribute @s luck modifier add ec_event_dream_surge 25.0 add_value

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"✦ DREAM SURGE ✦",color:"light_purple",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"The realm's dreams intensify!",color:"dark_purple",italic:true}]
tellraw @a [{text:"  "},{text:"For the next hour:",color:"gray"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"light_purple"},{text:"All Dreams boosted to 25%",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"light_purple"},{text:"Only Ornate+ crates will appear",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"light_purple"},{text:"Mythical crate chance boosted to 2%",color:"gold"}]
tellraw @a ""

# Epic activation sounds
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.0
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 1.5
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.2 1.5

# Title display
title @a times 10 60 20
title @a title {text:" "}
title @a subtitle [{text:"✦ DREAM SURGE ✦",color:"light_purple",bold:true}]
