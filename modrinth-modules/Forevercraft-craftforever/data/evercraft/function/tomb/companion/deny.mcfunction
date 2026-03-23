# Tomb System — Deny Companion Recovery
# @s = the grave owner who clicked [Deny]
# ec.tomb_deny trigger value = the grave ID

# Find the matching grave marker
execute store result score #tomb_deny_id ec.temp run scoreboard players get @s ec.tomb_deny

# Find the specific grave by ID and clear pending state
execute as @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_pending] if score @s ec.tomb_id = #tomb_deny_id ec.temp run tag @s add ec.tomb_deny_target

# Verify we found it
execute unless entity @e[type=marker,tag=ec.tomb_deny_target,limit=1] run return 0

# Get the finder's UUID
scoreboard players operation #tomb_f_uuid0 ec.temp = @e[type=marker,tag=ec.tomb_deny_target,limit=1] ec.tomb_finder0
scoreboard players operation #tomb_f_uuid1 ec.temp = @e[type=marker,tag=ec.tomb_deny_target,limit=1] ec.tomb_finder1
scoreboard players operation #tomb_f_uuid2 ec.temp = @e[type=marker,tag=ec.tomb_deny_target,limit=1] ec.tomb_finder2
scoreboard players operation #tomb_f_uuid3 ec.temp = @e[type=marker,tag=ec.tomb_deny_target,limit=1] ec.tomb_finder3

# Clear pending state — grave returns to normal
tag @e[type=marker,tag=ec.tomb_deny_target,limit=1] remove ec.tomb_pending
tag @e[type=marker,tag=ec.tomb_deny_target,limit=1] remove ec.tomb_deny_target

# Notify finder
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp run tellraw @s [{"text":"They prefer to retrieve it themselves.","color":"gray","italic":true}]

# Notify owner
tellraw @s [{"text":"You declined the offer. Your soul awaits you.","color":"gray","italic":true}]
