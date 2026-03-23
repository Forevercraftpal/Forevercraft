# Soulbound — Restore spirit artifacts on respawn
# Run as respawned player who had spirit artifacts

# Restore mainhand artifact
execute if entity @s[tag=ec.sp_death_mainhand] run function evercraft:spirit/soulbound/restore_mainhand
tag @s remove ec.sp_death_mainhand

# Restore offhand artifact
execute if entity @s[tag=ec.sp_death_offhand] run function evercraft:spirit/soulbound/restore_offhand
tag @s remove ec.sp_death_offhand

tag @s remove ec.sp_death_inv

# Kill the vault marker now that items are restored
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
execute as @e[tag=ec.sp_vault] if score @s ec.sp_owner = #owner_check ec.temp run kill @s

# Feedback
tellraw @s [{"text":"Your spirit artifacts returned to you.","color":"light_purple","italic":true}]
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.6 1.5
