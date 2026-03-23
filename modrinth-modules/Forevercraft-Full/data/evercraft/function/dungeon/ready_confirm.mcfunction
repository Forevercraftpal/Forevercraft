# Dungeon Ready-Check — Player confirms ready
# Run as the confirming player

scoreboard players set @s ec.dg_ready 1

# Announce to nearby party
tellraw @a[tag=dg.player,distance=..32] [{text:""},{"text":"[Ready] ","color":"green"},{"selector":"@s","color":"gold"},{"text":" is ready!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup master @a[tag=dg.player,distance=..32] ~ ~ ~ 0.5 1.5

# Check if all ready
execute store result score #dg_ready_total ec.temp if entity @a[tag=dg.player,distance=..32]
execute store result score #dg_ready_count ec.temp if entity @a[tag=dg.player,distance=..32,scores={ec.dg_ready=1..}]

# Display progress
function evercraft:dungeon/ready_progress

# If all ready, announce and clear ready state
execute if score #dg_ready_count ec.temp = #dg_ready_total ec.temp run tellraw @a[tag=dg.player,distance=..32] [{text:""},{"text":"[Dungeon] ","color":"dark_purple"},{"text":"All players ready! Dungeon starting...","color":"green","bold":true}]
execute if score #dg_ready_count ec.temp = #dg_ready_total ec.temp run playsound minecraft:block.note_block.chime master @a[tag=dg.player,distance=..32] ~ ~ ~ 1 1.5
execute if score #dg_ready_count ec.temp = #dg_ready_total ec.temp run scoreboard players set @a[tag=dg.player,distance=..32] ec.dg_ready 0
