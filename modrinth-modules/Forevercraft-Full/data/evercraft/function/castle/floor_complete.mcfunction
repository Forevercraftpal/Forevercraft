# Infinite Castle — Floor Complete (all 5 waves cleared)
# Update record, check milestones, start transition timer

# Update record if current floor > previous record
execute as @a[tag=ic.player] run scoreboard players operation @s ic.record > #ic_floor ec.var

# Spirit progression — Hoplite castle tracking (floor 40+ as Hoplite = flag)
execute if score #ic_floor ec.var matches 40.. as @a[tag=ic.player,tag=ec.sp_active,scores={ec.sp_weapon=14}] run scoreboard players set @s ec.sp_castle_hoplite 1

# Check for milestone rewards (every 10 floors)
scoreboard players operation #ic_milestone_check ec.var = #ic_floor ec.var
scoreboard players operation #ic_milestone_check ec.var %= #10 ec.const
execute if score #ic_milestone_check ec.var matches 0 run function evercraft:castle/reward_milestone

# Check for floor 100 mega reward
execute if score #ic_floor ec.var matches 100 run function evercraft:castle/reward_floor100

# Dream Storm Crystal drop chance (floors 26+, 1% per player)
execute if score #ic_floor ec.var matches 26.. as @a[tag=ic.player] run function evercraft:castle/dream_storm_crystal_roll

# Class Affinity XP — infinite castle floor
scoreboard players set #delta ec.temp 12000
execute as @a[tag=ic.player] run function evercraft:affinity/grant_current

# Start 30-second transition (600 ticks)
scoreboard players set #ic_transition ec.var 600

# Floor cleared announcement
execute store result storage evercraft:castle floor.current int 1 run scoreboard players get #ic_floor ec.var
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_red"},{text:"Floor Cleared!",color:"gold",bold:true}]

# Sound
playsound minecraft:entity.player.levelup master @a[tag=ic.player] ~ ~ ~ 1 1

# Show skip hint
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_red"},{text:"Next floor in 30s. ",color:"gray"},{text:"[Skip]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.ic_skip set 1"},hover_event:{action:"show_text",value:{text:"Click to skip timer",color:"yellow"}}}]

# Kill remaining mobs (safety)
kill @e[tag=ic.mob]
