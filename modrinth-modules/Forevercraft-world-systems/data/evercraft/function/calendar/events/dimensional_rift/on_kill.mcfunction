# Dimensional Rift — On Rift Mob Kill
# Advancement reward: 5% chance for Rare+ mob crate

# Revoke for re-triggering on next kill
advancement revoke @s only evercraft:calendar/rift_kill

# Only during active Dimensional Rift or Rift Echo event
execute unless score #cal_event_id ec.var matches 6 unless score #we_event_id ec.var matches 5 run return 0

# Track rift kill for Rift Survivor achievement
scoreboard players add @s ach.rift_kills_event 1

# 5% chance to drop a crate
execute store result score #rift_drop ec.temp run random value 1..100
execute unless score #rift_drop ec.temp matches 1..5 run return run tellraw @s [{text:"  "},{text:"[Forevercraft] ",color:"gold"},{text:"Rift creature defeated!",color:"light_purple"}]

# Roll for crate tier: Rare (60%), Ornate (25%), Exquisite (10%), Mythical (5%)
execute store result score #rift_loot ec.temp run random value 1..100
execute if score #rift_loot ec.temp matches 1..60 run function evercraft:mob_crates/spawn/rare
execute if score #rift_loot ec.temp matches 61..85 run function evercraft:mob_crates/spawn/ornate
execute if score #rift_loot ec.temp matches 86..95 run function evercraft:mob_crates/spawn/exquisite
execute if score #rift_loot ec.temp matches 96..100 run function evercraft:mob_crates/spawn/mythical

# Feedback
tellraw @s [{text:"  "},{text:"[Forevercraft] ",color:"gold"},{text:"Rift creature defeated! A crate materializes...",color:"light_purple"}]
