# Infinite Castle — Begin
# Run as: player who selected start/continue, at player position
# Expects: #ic_start_floor, #ic_key_cost already set by menu selection

# Remove starter tag
tag @s remove ic.starter

# Check key count — need #ic_key_cost keys
execute store result score #ic_has_keys ec.var run clear @s trial_key[custom_data~{dungeon_key:true}] 0
execute if score #ic_has_keys ec.var < #ic_key_cost ec.var run tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"Not enough Dungeon Keys! You need ",color:"red"},{score:{name:"#ic_key_cost",objective:"ec.var"},color:"yellow"},{text:" keys.",color:"red"}]
execute if score #ic_has_keys ec.var < #ic_key_cost ec.var run return 0

# Consume keys
function evercraft:castle/consume_keys

# Increment daily run counter
scoreboard players add @s ic.today 1

# Read player DR for scaling
execute store result score #ic_dr ec.var run attribute @s minecraft:luck get

# Set global state
scoreboard players set #ic_active ec.var 1
scoreboard players set #ic_wave ec.var 0
scoreboard players set #ic_timer ec.var 60
scoreboard players operation #ic_floor ec.var = #ic_start_floor ec.var
scoreboard players set #ic_transition ec.var 0

# Pick random instance (1-16)
execute store result score #ic_instance ec.var run random value 1..16

# Tag the player (and nearby party members)
tag @s add ic.player
scoreboard players set @s ic.deaths 0
scoreboard players set @s ic.coins 0

# Party integration
execute if score @s ec.party_id matches 1.. run function evercraft:party/dungeon/tag_castle_party

# Count participants
execute store result score #ic_players ec.var if entity @a[tag=ic.player]

# Save return position
execute at @s run summon marker ~ ~ ~ {Tags:["ic.return","ec.entity"]}

# Save return position to storage (for cleanup even if markers unloaded)
execute store result storage evercraft:castle return.x int 1 run data get entity @s Pos[0]
execute store result storage evercraft:castle return.y int 1 run data get entity @s Pos[1]
execute store result storage evercraft:castle return.z int 1 run data get entity @s Pos[2]

# Sky clearance check (need 190+ blocks above)
execute store result score #ic_sky_y ec.var run data get entity @s Pos[1]
scoreboard players add #ic_sky_y ec.var 172
execute if score #ic_sky_y ec.var matches 320.. run tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"Not enough sky clearance! Move to lower ground.",color:"red"}]
execute if score #ic_sky_y ec.var matches 320.. run function evercraft:castle/cleanup
execute if score #ic_active ec.var matches 0 run return 0

# Build first floor (172 blocks above player)
execute at @s positioned ~ ~172 ~ run function evercraft:castle/build/select

# Save arena center coordinates to storage (for cleanup even if chunks unloaded)
execute store result storage evercraft:castle arena.x int 1 run data get entity @e[type=marker,tag=ic.center,limit=1] Pos[0]
execute store result storage evercraft:castle arena.y int 1 run data get entity @e[type=marker,tag=ic.center,limit=1] Pos[1]
execute store result storage evercraft:castle arena.z int 1 run data get entity @e[type=marker,tag=ic.center,limit=1] Pos[2]

# Teleport players to arena center
execute as @a[tag=ic.player] at @e[type=marker,tag=ic.center,limit=1] run tp @s ~ ~1 ~

# Disable mob griefing (prevent creeper/ghast block destruction in arena)
gamerule minecraft:mob_griefing false

# Effects
effect give @a[tag=ic.player] blindness 1 0 true
effect give @a[tag=ic.player] resistance 5 4 true

# Sound
playsound minecraft:entity.wither.spawn master @a[tag=ic.player] ~ ~ ~ 0.5 0.8
playsound minecraft:block.end_portal.spawn master @a[tag=ic.player] ~ ~ ~ 0.3 1.2

# Announcements
execute store result storage evercraft:castle floor.current int 1 run scoreboard players get #ic_floor ec.var
tellraw @a [{text:"[Castle] ",color:"dark_red"},{selector:"@s"},{text:" has entered the Infinite Castle!",color:"red",bold:true}]
function evercraft:castle/announce_floor with storage evercraft:castle floor

# Enable skip trigger for all participants
scoreboard players set @a[tag=ic.player] ec.ic_skip 0
scoreboard players enable @a[tag=ic.player] ec.ic_skip

# Particle burst
execute at @e[type=marker,tag=ic.center,limit=1] run particle minecraft:reverse_portal ~ ~1 ~ 1 1 1 0.05 100 force
execute at @e[type=marker,tag=ic.center,limit=1] run particle minecraft:witch ~ ~1 ~ 1 1 1 0.05 50 force
