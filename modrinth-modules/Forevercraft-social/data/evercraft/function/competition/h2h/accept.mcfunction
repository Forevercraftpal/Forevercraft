$# H2H Competition — Accept (runs as target, type=$(type))

# Validate invite exists
execute unless score @s ec.h2h_inv matches 1 run return 0
execute unless entity @s[tag=h2h.pending_target] run return 0

# Clear invite state
scoreboard players set @s ec.h2h_inv 0
scoreboard players set @s ec.h2h_inv_cd 0
tag @s remove h2h.pending_target

# Validate challenger still online
execute unless entity @a[tag=h2h.challenger] run return run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"Challenger is no longer available.","color":"red"}]

# Set active type and timer
$scoreboard players set #h2h_active ec.var $(type)
scoreboard players set #h2h_timer ec.var 3000

# Tag both as participants
tag @s add h2h.participant
execute as @a[tag=h2h.challenger] run tag @s add h2h.participant
tag @a[tag=h2h.challenger] remove h2h.challenger

# Reset scores
execute as @a[tag=h2h.participant] run scoreboard players set @s ec.h2h_score 0
execute as @a[tag=h2h.participant] run scoreboard players set @s ec.h2h_baseline 0

# Take baseline snapshots for delta-track types
execute if score #h2h_active ec.var matches 2 as @a[tag=h2h.participant] run scoreboard players operation @s ec.h2h_baseline = @s adv.stat_mine
execute if score #h2h_active ec.var matches 4 as @a[tag=h2h.participant] run scoreboard players operation @s ec.h2h_baseline = @s ach.prospects_done
execute if score #h2h_active ec.var matches 5 as @a[tag=h2h.participant] run scoreboard players operation @s ec.h2h_baseline = @s ach.forages_done

# Apply fishing luck modifier if fishing type
execute if score #h2h_active ec.var matches 6 as @a[tag=h2h.participant] run attribute @s luck modifier add ec_h2h_fishing 0.5 add_value

# Setup bossbar
bossbar add evercraft:h2h_competition {"text":"Head-to-Head","color":"gold"}
bossbar set evercraft:h2h_competition visible true
bossbar set evercraft:h2h_competition players @a[tag=h2h.participant]
bossbar set evercraft:h2h_competition color yellow
bossbar set evercraft:h2h_competition max 3000
bossbar set evercraft:h2h_competition value 3000

# Type-specific bossbar name
execute if score #h2h_active ec.var matches 1 run bossbar set evercraft:h2h_competition name {"text":"Head-to-Head: Cooking","color":"gold"}
execute if score #h2h_active ec.var matches 2 run bossbar set evercraft:h2h_competition name {"text":"Head-to-Head: Mining","color":"gold"}
execute if score #h2h_active ec.var matches 3 run bossbar set evercraft:h2h_competition name {"text":"Head-to-Head: Forging","color":"gold"}
execute if score #h2h_active ec.var matches 4 run bossbar set evercraft:h2h_competition name {"text":"Head-to-Head: Prospecting","color":"gold"}
execute if score #h2h_active ec.var matches 5 run bossbar set evercraft:h2h_competition name {"text":"Head-to-Head: Foraging","color":"gold"}
execute if score #h2h_active ec.var matches 6 run bossbar set evercraft:h2h_competition name {"text":"Head-to-Head: Fishing","color":"gold"}

# Announce
tellraw @a[tag=h2h.participant] [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray","strikethrough":true}]
tellraw @a[tag=h2h.participant] [{"text":"  ★ HEAD-TO-HEAD COMPETITION ★","color":"gold","bold":true}]
execute if score #h2h_active ec.var matches 1 run tellraw @a[tag=h2h.participant] [{"text":"  Type: ","color":"gray"},{"text":"Cooking","color":"yellow","bold":true},{"text":" — Cook the most items in 2.5 minutes!","color":"gray"}]
execute if score #h2h_active ec.var matches 2 run tellraw @a[tag=h2h.participant] [{"text":"  Type: ","color":"gray"},{"text":"Mining","color":"aqua","bold":true},{"text":" — Mine the most blocks in 2.5 minutes!","color":"gray"}]
execute if score #h2h_active ec.var matches 3 run tellraw @a[tag=h2h.participant] [{"text":"  Type: ","color":"gray"},{"text":"Forging","color":"white","bold":true},{"text":" — Craft the most gear in 2.5 minutes!","color":"gray"}]
execute if score #h2h_active ec.var matches 4 run tellraw @a[tag=h2h.participant] [{"text":"  Type: ","color":"gray"},{"text":"Prospecting","color":"green","bold":true},{"text":" — Find the most ores in 2.5 minutes!","color":"gray"}]
execute if score #h2h_active ec.var matches 5 run tellraw @a[tag=h2h.participant] [{"text":"  Type: ","color":"gray"},{"text":"Foraging","color":"dark_green","bold":true},{"text":" — Gather the most plants in 2.5 minutes!","color":"gray"}]
execute if score #h2h_active ec.var matches 6 run tellraw @a[tag=h2h.participant] [{"text":"  Type: ","color":"gray"},{"text":"Fishing","color":"blue","bold":true},{"text":" — Catch the most fish in 2.5 minutes!","color":"gray"}]
tellraw @a[tag=h2h.participant] [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray","strikethrough":true}]

# Title
title @a[tag=h2h.participant] times 5 30 10
title @a[tag=h2h.participant] title {"text":"GO!","color":"gold","bold":true}
title @a[tag=h2h.participant] subtitle {"text":"Competition started!","color":"yellow"}

# Sound
execute as @a[tag=h2h.participant] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3 1.5
