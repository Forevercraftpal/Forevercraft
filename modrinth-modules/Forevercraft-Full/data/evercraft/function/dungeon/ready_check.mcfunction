# Dungeon Ready-Check — Initiate check for party
# Run as party leader at dungeon entrance

# Mark leader as ready
scoreboard players set @s ec.dg_ready 1

# Count party members
execute store result score #dg_ready_total ec.temp if entity @a[tag=dg.player,distance=..32]
execute store result score #dg_ready_count ec.temp if entity @a[tag=dg.player,distance=..32,scores={ec.dg_ready=1..}]

# Announce ready check
tellraw @a[tag=dg.player,distance=..32] [{text:""},{"text":"[Dungeon] ","color":"dark_purple"},{"selector":"@s","color":"gold"},{"text":" initiated a ready check!","color":"light_purple"}]
tellraw @a[tag=dg.player,distance=..32,scores={ec.dg_ready=0}] [{text:""},{"text":"  Type ","color":"gray"},{"text":"/trigger ec.ready set 1","color":"yellow","click_event":{"action":"run_command","command":"/trigger ec.ready set 1"}},{"text":" to confirm ready","color":"gray"}]

# Set timeout (30s = 600 ticks)
scoreboard players set #dg_ready_timer ec.var 600
