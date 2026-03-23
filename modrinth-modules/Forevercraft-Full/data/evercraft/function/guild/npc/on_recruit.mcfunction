# Guild NPC — Recruitment trigger (advancement reward)
# @s = player who right-clicked a profession villager
# Fires on EVERY profession villager interaction — must filter for sneak + guild zone

# Always revoke so it can re-fire
advancement revoke @s only evercraft:guild/recruit_npc

# Must be sneaking to recruit (normal right-click = just trading)
execute unless predicate evercraft:companions/is_sneaking run return 0

# Must be in a guild
execute unless score @s ec.guild_id matches 1.. run return 0

# Must be in guild zone
execute unless score @s ec.guild_in_zone matches 1 run return 0

# Find the nearest profession villager (the one we interacted with)
# Exclude already-recruited NPCs
execute unless entity @e[type=minecraft:villager,tag=more_professions_verified,tag=!GuildNPC,distance=..6,limit=1,sort=nearest] run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"No recruitable profession villager nearby.",color:"red"}]

# Detect which profession this villager is
execute as @e[type=minecraft:villager,tag=more_professions_verified,tag=!GuildNPC,distance=..6,limit=1,sort=nearest] run function evercraft:guild/npc/detect_profession

# Check if this profession already exists in the guild
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
function evercraft:guild/npc/check_duplicate with storage evercraft:guild_npc temp

# If check_duplicate set #gnpc_dup to 1, profession already recruited
execute if score #gnpc_dup ec.temp matches 1 run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"Your guild already has this profession recruited!",color:"red"}]

# All checks passed — recruit the villager
execute as @e[type=minecraft:villager,tag=more_professions_verified,tag=!GuildNPC,distance=..6,limit=1,sort=nearest] run function evercraft:guild/npc/recruit

tellraw @s [{text:"[Guild] ",color:"green"},{text:"Profession villager recruited to the guild!",color:"yellow"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.5
