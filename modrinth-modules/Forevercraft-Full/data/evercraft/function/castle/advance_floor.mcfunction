# Infinite Castle — Advance to Next Floor
# Destroy old room, increment floor, check key gate, build new room

# Advance floor counter
scoreboard players add #ic_floor ec.var 1

# Clear transition state
scoreboard players set #ic_transition ec.var 0

# Check key gate (every 10 floors)
scoreboard players operation #ic_gate_check ec.var = #ic_floor ec.var
scoreboard players operation #ic_gate_check ec.var %= #10 ec.const
execute if score #ic_gate_check ec.var matches 0 run function evercraft:castle/check_key_gate
execute if score #ic_active ec.var matches 0 run return 0

# Kill remaining mobs (safety)
kill @e[tag=ic.mob]

# Destroy old room
execute at @e[type=marker,tag=ic.center,limit=1] run function evercraft:castle/build/destroy

# Pick new instance theme
execute store result score #ic_instance ec.var run random value 1..16

# Build new room at same sky position
execute at @e[type=marker,tag=ic.return,limit=1] positioned ~ ~172 ~ run function evercraft:castle/build/select

# Teleport players to new room
execute as @a[tag=ic.player] at @e[type=marker,tag=ic.center,limit=1] run tp @s ~ ~1 ~

# Reset wave state
scoreboard players set #ic_wave ec.var 0
scoreboard players set #ic_timer ec.var 60

# Effects
effect give @a[tag=ic.player] blindness 1 0 true
effect give @a[tag=ic.player] resistance 3 4 true

# Announce
execute store result storage evercraft:castle floor.current int 1 run scoreboard players get #ic_floor ec.var
function evercraft:castle/announce_floor with storage evercraft:castle floor

# Sound
playsound minecraft:block.end_portal.spawn master @a[tag=ic.player] ~ ~ ~ 0.6 0.6
playsound minecraft:entity.warden.emerge master @a[tag=ic.player] ~ ~ ~ 0.4 0.8

# Particle burst
execute at @e[type=marker,tag=ic.center,limit=1] run particle minecraft:reverse_portal ~ ~1 ~ 2 1 2 0.05 150 force
