# Guild Stone - Setup at placed block position
# Run at: the lodestone block position (from raycast hit or grid scan, align xyz)
# Run as: the player who placed it

# Stop raycast / fallback scan
scoreboard players set @s ec.gs_temp 99
tag @s remove ec.searching

# Spawn marker entity at the block center
summon marker ~0.5 ~0.5 ~0.5 {Tags:["ec.guildstone","ec.gs_marker","ec.gs_pending","ec.lodestone_registered","smithed.entity"]}

# Store placer UUID3 on marker
execute store result score @e[type=marker,tag=ec.guildstone,tag=ec.gs_pending,limit=1,sort=nearest] ec.gs_placer run scoreboard players get @s companion.id

# Spawn interaction entity on top of the lodestone
summon interaction ~0.5 ~1 ~0.5 {Tags:["ec.guildstone_interact","ec.gs_interact","smithed.entity"],width:1.0f,height:1.0f,response:1b}

# Spawn item_display overlay (guild stone skin)
data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODcxMDY2NSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzc4NGRmZjMyNTljZGQyMTNmOGU2ZDAzZTQ3YmU1MWE0ZjM0MGVjMzIyZGU4MDUxOGMxZmI3NTViMzYxYzMyZjQiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="
function evercraft:guild/stone/spawn_display with storage evercraft:guidestone

# Effects
particle minecraft:reverse_portal ~0.5 ~1.2 ~0.5 0.3 0.5 0.3 0.02 30
particle minecraft:enchant ~0.5 ~1.5 ~0.5 0.5 0.5 0.5 0.5 50
playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 1 0.7
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 0.5 1.2

# === AUTO-REGISTER: If player is already in a guild and guild has no zone, skip charter ===
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/stone/try_auto_register
execute if score @s ec.guild_id matches 1.. run return 0

# === NEW GUILD: Give charter for guild creation ===
give @s minecraft:writable_book[custom_data={guild_charter:1b,evercraft_item:1b},custom_name="Guild Charter",lore=["Write your guild name on page 1","and sign to found your guild."],enchantment_glint_override=true,writable_book_content={}] 1

tellraw @s [{text:"[Guild] ",color:"green"},{text:"Guild Stone placed! ",color:"green"},{text:"Write your guild name in the charter and sign it to found your guild. ",color:"gray"},{text:"Requires 64 emeralds.",color:"yellow"}]
