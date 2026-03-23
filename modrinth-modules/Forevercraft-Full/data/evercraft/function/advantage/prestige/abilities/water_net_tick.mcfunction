# Water Net Tick — morning-based auto-fishing system
# Called from advantage/tick/main every 1s as @e[type=marker,tag=WaterNet] at @s
# Marker stores: data.last_catch_day (int), data.master_angler (bool)
# Tags: WaterNet.active (valid water), WaterNet.invalid (insufficient water)

# === BREAK DETECTION ===
# If barrel is gone, trigger break handler
execute unless block ~ ~ ~ minecraft:barrel run function evercraft:advantage/prestige/abilities/water_net_on_break
execute unless block ~ ~ ~ minecraft:barrel run return 0

# === WATER VALIDATION (every 10s — uses pa_cage_ct as modulo counter) ===
scoreboard players add @s adv.pa_cage_ct 1
scoreboard players operation #wn_mod adv.temp = @s adv.pa_cage_ct
scoreboard players operation #wn_mod adv.temp %= #10 adv.temp
execute unless score #wn_mod adv.temp matches 0 run return 0

# Reset modulo counter to prevent overflow
execute if score @s adv.pa_cage_ct matches 100.. run scoreboard players set @s adv.pa_cage_ct 0

# Count water source blocks on 4 cardinal sides
scoreboard players set #wn_water adv.temp 0
execute if block ~1 ~ ~ minecraft:water run scoreboard players add #wn_water adv.temp 1
execute if block ~-1 ~ ~ minecraft:water run scoreboard players add #wn_water adv.temp 1
execute if block ~ ~ ~1 minecraft:water run scoreboard players add #wn_water adv.temp 1
execute if block ~ ~ ~-1 minecraft:water run scoreboard players add #wn_water adv.temp 1

# State transitions: detect when water status changes and notify
# Was invalid, now has water → activated
execute if score #wn_water adv.temp matches 3.. if entity @s[tag=WaterNet.invalid] run tellraw @a[distance=..32] [{text:"✦ ",color:"gold"},{text:"A Water Net",color:"aqua"},{text:" is now surrounded by water and active!",color:"gray"}]
execute if score #wn_water adv.temp matches 3.. if entity @s[tag=WaterNet.invalid] run playsound minecraft:block.brewing_stand.brew master @a[distance=..32] ~ ~ ~ 0.7 1.2
# Spawn overlay on activation
execute if score #wn_water adv.temp matches 3.. if entity @s[tag=WaterNet.invalid] run summon armor_stand ~0.5 ~ ~0.5 { Tags:["WaterNet.stand","WaterNet.display","smithed.entity"], NoGravity:true, Invisible:true, Small:true, Invulnerable:true, DisabledSlots:4144959, Passengers:[{ id:"minecraft:item_display", Tags:["WaterNet.display","smithed.entity"], brightness:{sky:15,block:15}, view_range:1f, width:0f, height:0f, item_display:"head", transformation:{ left_rotation:[0f,0f,0f,1f], right_rotation:[0f,0f,0f,1f], translation:[0.0f,0.05f,0.0f], scale:[2.05f,2.1f,2.05f] }, item:{ id:"minecraft:player_head", count:1, components:{ "minecraft:profile":{ id:[I;-1974477980,147736616,-1635819972,23806684], properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc3MTA5NjcxODEzNywKICAicHJvZmlsZUlkIiA6ICJlNzVjZTk1MTc1OWI0MmVlYmY4ZmVjZDhhYjM0YjM2MyIsCiAgInByb2ZpbGVOYW1lIiA6ICJfS0tYRF8iLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTlhMDJiNDgwMjM5YWYzMThkMDNiYzA0NTE5Y2YxY2E4ODE4MDYwMDkyNGFiNTk4NzlkZmE2MDMyYjEwNmU4MCIKICAgIH0KICB9Cn0="}] } } } }] }

# Was active, now lost water → deactivated
execute if score #wn_water adv.temp matches ..2 if entity @s[tag=WaterNet.active] run tellraw @a[distance=..32] [{text:"✦ ",color:"gold"},{text:"A Water Net",color:"yellow"},{text:" lost water contact and is now inactive.",color:"gray"}]
execute if score #wn_water adv.temp matches ..2 if entity @s[tag=WaterNet.active] run playsound minecraft:block.note_block.bass master @a[distance=..32] ~ ~ ~ 0.5 0.5
# Remove overlay on deactivation
execute if score #wn_water adv.temp matches ..2 if entity @s[tag=WaterNet.active] run kill @e[type=armor_stand,tag=WaterNet.stand,distance=..1]
execute if score #wn_water adv.temp matches ..2 if entity @s[tag=WaterNet.active] run kill @e[type=item_display,tag=WaterNet.display,distance=..1]

# Apply tags after notification checks (order matters — check old state THEN update)
execute if score #wn_water adv.temp matches 3.. run tag @s add WaterNet.active
execute if score #wn_water adv.temp matches 3.. run tag @s remove WaterNet.invalid
execute if score #wn_water adv.temp matches ..2 run tag @s add WaterNet.invalid
execute if score #wn_water adv.temp matches ..2 run tag @s remove WaterNet.active

# === AMBIENT PARTICLES (only when active) ===
execute if entity @s[tag=WaterNet.active] run particle minecraft:bubble ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute if entity @s[tag=WaterNet.active] run particle minecraft:fishing ~ ~0.8 ~ 0.4 0.1 0.4 0.01 1

# === MORNING CATCH DETECTION ===
# Only proceed if active (valid water)
execute unless entity @s[tag=WaterNet.active] run return 0

# Compare marker's last_catch_day with global #current_day (set by luck_buffs/tick)
# Read marker's stored day into scoreboard
execute store result score #wn_last_day adv.temp run data get entity @s data.last_catch_day

# If already caught today, skip
execute if score #wn_last_day adv.temp = #current_day ec.var run return 0

# Check we're in the morning window (0-18000 ticks)
execute if score #time ec.var matches 18001.. run return 0

# === TRIGGER MORNING CATCH ===
function evercraft:advantage/prestige/abilities/water_net_morning_catch
