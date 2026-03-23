# World Boss — Totem Activation
# Called from advancement bosses/totem/use (consume_item trigger)
# Item is ALREADY consumed at this point

# Revoke advancement for re-use
advancement revoke @s only evercraft:bosses/totem/use

# Check 1: Is a boss already active?
execute if score #wb_active ec.var matches 1 run tellraw @s [{text:"[Boss] ",color:"dark_red"},{text:"A World Boss is already active!",color:"red"}]
execute if score #wb_active ec.var matches 1 run return run function evercraft:bosses/summon/fail

# Check 2: Player cooldown (gametime-based, 3 in-game days = 216000 ticks)
execute store result score #wb_temp ec.var run time query gametime
scoreboard players operation #wb_temp2 ec.var = #wb_temp ec.var
scoreboard players operation #wb_temp2 ec.var -= @s wb.cooldown
execute if score @s wb.cooldown matches 1.. if score #wb_temp2 ec.var matches ..215999 run tellraw @s [{text:"[Boss] ",color:"dark_red"},{text:"You must wait 3 days before summoning again!",color:"red"}]
execute if score @s wb.cooldown matches 1.. if score #wb_temp2 ec.var matches ..215999 run return run function evercraft:bosses/summon/fail

# Check 3: Not in any GUI menu
execute if entity @s[tag=TX.InMenu] run tellraw @s [{text:"[Boss] ",color:"dark_red"},{text:"Close your menu first!",color:"red"}]
execute if entity @s[tag=TX.InMenu] run return run function evercraft:bosses/summon/fail
execute if entity @s[tag=RF.InMenu] run return run function evercraft:bosses/summon/fail
execute if entity @s[tag=HS.InMenu] run return run function evercraft:bosses/summon/fail
execute if entity @s[tag=Adv.InMenu] run return run function evercraft:bosses/summon/fail

# All checks passed — set cooldown
execute store result score @s wb.cooldown run time query gametime

# Safety: clear stale engagement tags from previous fights
tag @a remove wb.participant
tag @a remove wb.last_hit
advancement revoke @a only evercraft:bosses/damage/dealt

# Tag summoner
tag @s add wb.summoner

# Summon temp marker and spread it 32-40 blocks away from summoner
execute at @s run summon marker ~ ~ ~ {Tags:["wb.temp_spawn"]}
execute at @s run spreadplayers ~ ~ 32 40 false @e[type=marker,tag=wb.temp_spawn,limit=1]

# Validate: marker must be 20+ blocks from ALL players (retries up to 5 times)
scoreboard players set #wb_spawn_tries ec.var 5
function evercraft:bosses/summon/validate_spawn_pos

# Detect dimension and pick random boss (boss spawns 5 blocks ahead of player, then gets relocated)
# Overworld: bosses 1-6, Nether: 7-9, End: 10-11
execute if dimension minecraft:overworld run function evercraft:bosses/summon/pick_overworld
execute if dimension minecraft:the_nether run function evercraft:bosses/summon/pick_nether
execute if dimension minecraft:the_end run function evercraft:bosses/summon/pick_end

# Teleport boss AND minions to the marker location (32-40 blocks from summoner)
# Minions were spawned at boss's initial position (5 blocks ahead of player),
# so they must be relocated to the validated spawn point along with the boss.
execute at @e[type=marker,tag=wb.temp_spawn,limit=1] run tp @e[type=!player,tag=wb.boss,limit=1] ~ ~ ~
execute at @e[type=!player,tag=wb.boss,limit=1] run tp @e[tag=wb.minion] ~ ~ ~

# Kill temp marker
kill @e[type=marker,tag=wb.temp_spawn]
