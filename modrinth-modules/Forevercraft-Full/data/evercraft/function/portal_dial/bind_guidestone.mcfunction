# Portal Dial — Bind to a Guidestone
# Macro arg: hand ("mainhand" or "offhand")
# Run as: the player, at their position
# Called from guidestone/on_interact when player holds a Portal Dial

# Find the nearest registered guidestone marker
execute unless entity @e[type=marker,tag=ec.gs_registered,distance=..8] run return run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"No guidestone found nearby!",color:"red"}]

# Check first-bind cost (30 XP levels) — only if portal_dial_bound flag is NOT set
scoreboard players set #pd_first_bind ec.gs_temp 1
$execute if items entity @s weapon.$(hand) compass[custom_data~{portal_dial_bound:true}] run scoreboard players set #pd_first_bind ec.gs_temp 0

# If first bind, verify player has 30 levels
execute if score #pd_first_bind ec.gs_temp matches 1 store result score #pd_xp ec.gs_temp run experience query @s levels
execute if score #pd_first_bind ec.gs_temp matches 1 if score #pd_xp ec.gs_temp matches ..29 run tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"You need ",color:"red"},{text:"30 levels",color:"gold",bold:true},{text:" to bind your Portal Dial for the first time!",color:"red"}]
execute if score #pd_first_bind ec.gs_temp matches 1 if score #pd_xp ec.gs_temp matches ..29 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #pd_first_bind ec.gs_temp matches 1 if score #pd_xp ec.gs_temp matches ..29 run return fail

# Deduct 30 levels if first bind
execute if score #pd_first_bind ec.gs_temp matches 1 run experience add @s -30 levels

# --- Gather guidestone data ---

# Guidestone ID
execute store result storage eden:temp pd_bind.gs_id int 1 run scoreboard players get @e[type=marker,tag=ec.gs_registered,distance=..8,limit=1,sort=nearest] ec.gs_id

# Position (from marker entity)
execute store result storage eden:temp pd_bind.x int 1 run data get entity @e[type=marker,tag=ec.gs_registered,distance=..8,limit=1,sort=nearest] Pos[0]
execute store result storage eden:temp pd_bind.y int 1 run data get entity @e[type=marker,tag=ec.gs_registered,distance=..8,limit=1,sort=nearest] Pos[1]
execute store result storage eden:temp pd_bind.z int 1 run data get entity @e[type=marker,tag=ec.gs_registered,distance=..8,limit=1,sort=nearest] Pos[2]

# Dimension (entity Dimension NBT is not accessible — use execute if dimension)
data modify storage eden:temp pd_bind.dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage eden:temp pd_bind.dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage eden:temp pd_bind.dim set value "minecraft:the_end"

# Primed status
scoreboard players set #pd_primed ec.gs_temp 0
execute if data entity @e[type=marker,tag=ec.gs_registered,distance=..8,limit=1,sort=nearest] {data:{primed:1b}} run scoreboard players set #pd_primed ec.gs_temp 1

# Look up name from registry
execute store result score #pd_target_id ec.gs_temp run data get storage eden:temp pd_bind.gs_id
data modify storage eden:temp pd_bind.name set value "Guidestone"
function evercraft:portal_dial/lookup_gs_name

# Store the hand for the apply function
$data modify storage eden:temp pd_bind.hand set value "$(hand)"

# Apply binding to the item
function evercraft:portal_dial/apply_gs_bind with storage eden:temp pd_bind
