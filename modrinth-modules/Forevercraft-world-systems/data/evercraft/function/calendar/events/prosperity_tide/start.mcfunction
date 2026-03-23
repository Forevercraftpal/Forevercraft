# Prosperity Tide — START (1 day)
# Fortune surges across all activities — boosted crate rates and rewards

# Set calendar state
scoreboard players set #cal_active ec.var 1
scoreboard players set #cal_event_id ec.var 7
scoreboard players set #cal_event_days ec.var 1
function evercraft:briefing/log_event {msg:"Prosperity Tide began!"}

# Set prosperity flag (checked by crate systems for boosted rates)
scoreboard players set #cal_prosperity ec.var 1

# Apply Dream Rate modifier
execute as @a run attribute @s luck modifier remove ec_cal_prosperity
execute as @a run attribute @s luck modifier add ec_cal_prosperity 1.0 add_value

# Track for achievements
scoreboard players set @a ach.cal_prosperity 1
execute as @a run scoreboard players operation @s ach.prosperity_base = @s ach.crates_opened

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"PROSPERITY TIDE",color:"gold",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"Fortune smiles upon the realm!",color:"yellow",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"All crate drop rates doubled",color:"yellow"}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"Companion encounter rate doubled",color:"yellow"}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"Quest rewards +50% XP",color:"yellow"}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"Dream Rate +1.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 1 day",color:"gray"}]
tellraw @a ""

# Celebration sounds
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.2
execute as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.5
execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 0.6 1.0

# Title
title @a times 10 80 30
title @a title [{text:"Prosperity Tide",color:"gold"}]
title @a subtitle [{text:"All rewards are amplified today!",color:"yellow",italic:true}]
