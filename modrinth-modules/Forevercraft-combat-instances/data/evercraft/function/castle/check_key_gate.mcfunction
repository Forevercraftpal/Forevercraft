# Infinite Castle — Key Gate Check (every 10 floors)
# Checks if the initiating player has 1 key, consumes it
# If not enough keys — forced exit with rewards earned

# Find the nearest ic.player and check their keys
execute store result score #ic_gate_keys ec.var as @a[tag=ic.player,limit=1,sort=nearest] run clear @s trial_key[custom_data~{dungeon_key:true}] 0

# Not enough keys — forced exit
execute if score #ic_gate_keys ec.var matches ..0 run tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_red"},{text:"No Dungeon Keys remaining — the castle rejects you!",color:"red"}]
execute if score #ic_gate_keys ec.var matches ..0 run function evercraft:castle/fail
execute if score #ic_active ec.var matches 0 run return 0

# Consume 1 key
execute as @a[tag=ic.player,limit=1,sort=nearest] run clear @s trial_key[custom_data~{dungeon_key:true}] 1

# Announce
execute store result storage evercraft:castle gate.floor int 1 run scoreboard players get #ic_floor ec.var
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_red"},{text:"Key consumed for floor gate.",color:"yellow"}]
playsound minecraft:block.trial_spawner.about_to_spawn_item master @a[tag=ic.player] ~ ~ ~ 0.6 1.0
