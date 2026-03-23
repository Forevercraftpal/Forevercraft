# Tomb System — Accept Companion Recovery
# @s = the grave owner who clicked [Accept]
# ec.tomb_accept trigger value = the grave ID

# Find the matching grave marker
execute store result score #tomb_accept_id ec.temp run scoreboard players get @s ec.tomb_accept

# Verify the grave exists and is pending
execute unless entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_pending] run tellraw @s [{"text":"That grave is no longer available.","color":"gray","italic":true}]
execute unless entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_pending] run return 0

# Find the specific grave by ID
tag @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_pending] remove ec.tomb_accept_target
execute as @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_pending] if score @s ec.tomb_id = #tomb_accept_id ec.temp run tag @s add ec.tomb_accept_target

# Verify we found it
execute unless entity @e[type=marker,tag=ec.tomb_accept_target,limit=1] run tellraw @s [{"text":"That grave is no longer available.","color":"gray","italic":true}]
execute unless entity @e[type=marker,tag=ec.tomb_accept_target,limit=1] run return 0

# Mark grave as bundled (no longer pending, no longer self-collectible visually)
tag @e[type=marker,tag=ec.tomb_accept_target,limit=1] remove ec.tomb_pending
tag @e[type=marker,tag=ec.tomb_accept_target,limit=1] add ec.tomb_bundled

# Get the finder's UUID from the marker
scoreboard players operation #tomb_f_uuid0 ec.temp = @e[type=marker,tag=ec.tomb_accept_target,limit=1] ec.tomb_finder0
scoreboard players operation #tomb_f_uuid1 ec.temp = @e[type=marker,tag=ec.tomb_accept_target,limit=1] ec.tomb_finder1
scoreboard players operation #tomb_f_uuid2 ec.temp = @e[type=marker,tag=ec.tomb_accept_target,limit=1] ec.tomb_finder2
scoreboard players operation #tomb_f_uuid3 ec.temp = @e[type=marker,tag=ec.tomb_accept_target,limit=1] ec.tomb_finder3

# Give the finder a Soul Bundle and tag them as carrier
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp run give @s bundle[custom_name={text:"Soul Bundle",color:"aqua",italic:true,bold:true},enchantment_glint_override=true,custom_data={soul_bundle:1b},lore=[{text:"A fallen soul, entrusted to you.",color:"gray",italic:true},{text:"Return it to its owner.",color:"gold",italic:false}]]
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp run tag @s add ec.tomb_carrier
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp run scoreboard players operation @s ec.tomb_carry = #tomb_accept_id ec.temp

# Store owner UUID on the carrier for delivery matching
execute as @a[tag=ec.tomb_carrier] if score @s ec.tomb_carry = #tomb_accept_id ec.temp run scoreboard players operation @s ec.tomb_carry_o0 = @e[type=marker,tag=ec.tomb_accept_target,limit=1] ec.tomb_uuid0
execute as @a[tag=ec.tomb_carrier] if score @s ec.tomb_carry = #tomb_accept_id ec.temp run scoreboard players operation @s ec.tomb_carry_o1 = @e[type=marker,tag=ec.tomb_accept_target,limit=1] ec.tomb_uuid1
execute as @a[tag=ec.tomb_carrier] if score @s ec.tomb_carry = #tomb_accept_id ec.temp run scoreboard players operation @s ec.tomb_carry_o2 = @e[type=marker,tag=ec.tomb_accept_target,limit=1] ec.tomb_uuid2
execute as @a[tag=ec.tomb_carrier] if score @s ec.tomb_carry = #tomb_accept_id ec.temp run scoreboard players operation @s ec.tomb_carry_o3 = @e[type=marker,tag=ec.tomb_accept_target,limit=1] ec.tomb_uuid3

# Despawn grave visual entities (keep the data marker alive for delivery)
execute store result score #tomb_cleanup_id ec.temp run scoreboard players get @e[type=marker,tag=ec.tomb_accept_target,limit=1] ec.tomb_id
execute as @e[tag=ec.tomb] unless entity @s[tag=ec.tomb_data] if score @s ec.tomb_id = #tomb_cleanup_id ec.temp run kill @s

# TP data marker to carrier so it stays loaded during delivery (death location may unload)
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp at @s run tp @e[type=marker,tag=ec.tomb_accept_target,limit=1] ~ ~ ~

# Notify finder
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp run tellraw @s [{"text":"\n"},{"text":"⚔ ","color":"gold"},{"text":"You now carry a fallen soul. Return it to its owner.","color":"gold"},{"text":"\n"}]

# Notify owner
tellraw @s [{"text":"You have entrusted your soul to a companion...","color":"gray","italic":true}]

# Clean up
tag @e[tag=ec.tomb_accept_target] remove ec.tomb_accept_target
