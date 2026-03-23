# ============================================================
# Guild Companion — Summon entities at guild stone position
# Run as: ec.guildstone marker, at guild stone position
# Requires: storage evercraft:companions guild.item = pet item data
#           storage evercraft:companions guild.slot = slot index (0-24)
# ============================================================

# Summon invisible, silent, invulnerable baby chicken with head passenger
summon chicken ~1 ~1 ~ {Silent:1b, Invisible:1b, Invulnerable:1b, Age:-2147483648, PersistenceRequired:1b, DeathLootTable:"minecraft:empty", CanPickUpLoot:0b, Tags:[GuildCompanion, Pet, GC.New], Passengers:[{id:"item_display", Tags:[GC.Head, Pet, GC.NewHead], item_display:"ground", billboard:"center", transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}, CustomNameVisible:1b, item:{id:"player_head", count:1b}}]}

# Force invisible + silent
data merge entity @e[type=chicken, tag=GC.New, limit=1] {Invisible:1b, Silent:1b}
effect give @e[type=chicken, tag=GC.New, limit=1] minecraft:invisibility infinite 0 true

# Summon interaction entity separately (standalone for clickability)
summon interaction ~1 ~1.5 ~ {Tags:[GC.Interact, Pet, GC.NewInteract], width:0.8f, height:0.8f, response:1b}

# Copy item data from storage to the head display
data modify entity @e[type=item_display, tag=GC.NewHead, limit=1] item set from storage evercraft:companions guild.item

# Set companion.id (owner) on all three entities
scoreboard players operation @e[type=chicken, tag=GC.New, limit=1] companion.id = #gc_owner_id companion.id
scoreboard players operation @e[type=item_display, tag=GC.NewHead, limit=1] companion.id = #gc_owner_id companion.id
scoreboard players operation @e[type=interaction, tag=GC.NewInteract, limit=1] companion.id = #gc_owner_id companion.id

# Set guild ID on all three entities
scoreboard players operation @e[type=chicken, tag=GC.New, limit=1] ec.guild_id = #gc_guild_id ec.guild_id
scoreboard players operation @e[type=item_display, tag=GC.NewHead, limit=1] ec.guild_id = #gc_guild_id ec.guild_id
scoreboard players operation @e[type=interaction, tag=GC.NewInteract, limit=1] ec.guild_id = #gc_guild_id ec.guild_id

# Set the guild slot index on all three entities
execute store result score @e[type=chicken, tag=GC.New, limit=1] gc.slot run data get storage evercraft:companions guild.slot
execute store result score @e[type=item_display, tag=GC.NewHead, limit=1] gc.slot run data get storage evercraft:companions guild.slot
execute store result score @e[type=interaction, tag=GC.NewInteract, limit=1] gc.slot run data get storage evercraft:companions guild.slot

# Copy custom name from item to head display
data modify entity @e[type=item_display, tag=GC.NewHead, limit=1] CustomName set from storage evercraft:companions guild.item.components."minecraft:custom_name"

# Initialize passive RP timer
execute store result score @e[type=item_display, tag=GC.NewHead, limit=1] gc.rp_timer run time query gametime

# Clean up temp tags
tag @e[type=chicken, tag=GC.New, limit=1] remove GC.New
tag @e[type=item_display, tag=GC.NewHead, limit=1] remove GC.NewHead
tag @e[type=interaction, tag=GC.NewInteract, limit=1] remove GC.NewInteract
