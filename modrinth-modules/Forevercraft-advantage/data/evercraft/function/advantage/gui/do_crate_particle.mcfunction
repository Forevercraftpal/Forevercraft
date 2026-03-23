# Run as the player — Macro: $(id) = particle ID (1-19)
# Toggle a crate particle on/off. Supports 2 active slots (different zones).

# --- Unlock check: compute 2^(id-1), check (cc_particles / pow) % 2 ---
$scoreboard players set #cc_id adv.temp $(id)
scoreboard players set #cc_pow adv.temp 0
execute if score #cc_id adv.temp matches 1 run scoreboard players set #cc_pow adv.temp 1
execute if score #cc_id adv.temp matches 2 run scoreboard players set #cc_pow adv.temp 2
execute if score #cc_id adv.temp matches 3 run scoreboard players set #cc_pow adv.temp 4
execute if score #cc_id adv.temp matches 4 run scoreboard players set #cc_pow adv.temp 8
execute if score #cc_id adv.temp matches 5 run scoreboard players set #cc_pow adv.temp 16
execute if score #cc_id adv.temp matches 6 run scoreboard players set #cc_pow adv.temp 32
execute if score #cc_id adv.temp matches 7 run scoreboard players set #cc_pow adv.temp 64
execute if score #cc_id adv.temp matches 8 run scoreboard players set #cc_pow adv.temp 128
execute if score #cc_id adv.temp matches 9 run scoreboard players set #cc_pow adv.temp 256
execute if score #cc_id adv.temp matches 10 run scoreboard players set #cc_pow adv.temp 512
execute if score #cc_id adv.temp matches 11 run scoreboard players set #cc_pow adv.temp 1024
execute if score #cc_id adv.temp matches 12 run scoreboard players set #cc_pow adv.temp 2048
execute if score #cc_id adv.temp matches 13 run scoreboard players set #cc_pow adv.temp 4096
execute if score #cc_id adv.temp matches 14 run scoreboard players set #cc_pow adv.temp 8192
execute if score #cc_id adv.temp matches 15 run scoreboard players set #cc_pow adv.temp 16384
execute if score #cc_id adv.temp matches 16 run scoreboard players set #cc_pow adv.temp 32768
execute if score #cc_id adv.temp matches 17 run scoreboard players set #cc_pow adv.temp 65536
execute if score #cc_id adv.temp matches 18 run scoreboard players set #cc_pow adv.temp 131072
execute if score #cc_id adv.temp matches 19 run scoreboard players set #cc_pow adv.temp 262144

scoreboard players operation #cc_check adv.temp = @s adv.cc_particles
scoreboard players operation #cc_check adv.temp /= #cc_pow adv.temp
scoreboard players operation #cc_check adv.temp %= #2 adv.temp

# Reject if locked
execute if score #cc_check adv.temp matches 0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You haven't unlocked this particle yet!",color:"red"}]
execute if score #cc_check adv.temp matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
execute if score #cc_check adv.temp matches 0 run return 0

# --- Toggle logic ---
# Use #cc_did flag: 0=no action taken, 1=deactivated
scoreboard players set #cc_did adv.temp 0

# If this particle is already in slot 1, turn it OFF (set flag BEFORE clearing)
$execute if score @s adv.cc_part1 matches $(id) run scoreboard players set #cc_did adv.temp 1
$execute if score @s adv.cc_part1 matches $(id) run scoreboard players set @s adv.cc_part1 0

# If this particle is already in slot 2, turn it OFF (set flag BEFORE clearing)
$execute if score @s adv.cc_part2 matches $(id) run scoreboard players set #cc_did adv.temp 1
$execute if score @s adv.cc_part2 matches $(id) run scoreboard players set @s adv.cc_part2 0

# If we deactivated, respond and exit
execute if score #cc_did adv.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Particle deactivated.",color:"gray"}]
execute if score #cc_did adv.temp matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8
execute if score #cc_did adv.temp matches 1 run function evercraft:advantage/gui/refresh_crate_cosmetics
execute if score #cc_did adv.temp matches 1 run return 0

# Determine zone of the new particle
# Zone lookup: 1-5=Feet(1), 6-10=Aura(2), 11-14=Head(3), 15-18=Ambient(4)
scoreboard players set #cc_zone adv.temp 0
execute if score #cc_id adv.temp matches 1..5 run scoreboard players set #cc_zone adv.temp 1
execute if score #cc_id adv.temp matches 6..10 run scoreboard players set #cc_zone adv.temp 2
execute if score #cc_id adv.temp matches 11..14 run scoreboard players set #cc_zone adv.temp 3
execute if score #cc_id adv.temp matches 15..18 run scoreboard players set #cc_zone adv.temp 4
execute if score #cc_id adv.temp matches 19 run scoreboard players set #cc_zone adv.temp 2

# Try slot 1 first (if empty)
$execute if score @s adv.cc_part1 matches 0 run scoreboard players set @s adv.cc_part1 $(id)
$execute if score @s adv.cc_part1 matches $(id) run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Particle activated (Slot 1)!",color:"green"}]
$execute if score @s adv.cc_part1 matches $(id) run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
$execute if score @s adv.cc_part1 matches $(id) run function evercraft:advantage/gui/refresh_crate_cosmetics
$execute if score @s adv.cc_part1 matches $(id) run return 0

# Check zone conflict — slot 1's zone vs new particle's zone
scoreboard players set #cc_zone1 adv.temp 0
execute if score @s adv.cc_part1 matches 1..5 run scoreboard players set #cc_zone1 adv.temp 1
execute if score @s adv.cc_part1 matches 6..10 run scoreboard players set #cc_zone1 adv.temp 2
execute if score @s adv.cc_part1 matches 11..14 run scoreboard players set #cc_zone1 adv.temp 3
execute if score @s adv.cc_part1 matches 15..18 run scoreboard players set #cc_zone1 adv.temp 4
execute if score @s adv.cc_part1 matches 19 run scoreboard players set #cc_zone1 adv.temp 2

# If same zone, error
execute if score #cc_zone adv.temp = #cc_zone1 adv.temp run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Same zone! Deactivate your current particle first.",color:"red"}]
execute if score #cc_zone adv.temp = #cc_zone1 adv.temp run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
execute if score #cc_zone adv.temp = #cc_zone1 adv.temp run return 0

# Different zone — put in slot 2
$scoreboard players set @s adv.cc_part2 $(id)
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Particle activated (Slot 2)!",color:"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
function evercraft:advantage/gui/refresh_crate_cosmetics
