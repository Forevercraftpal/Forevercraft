# Ornate Patron Kill Reward — 100 XP
advancement revoke @s only evercraft:mobs/patrons/kill/ornate
experience add @s 100 points
execute if score @s adv.victorian matches 1.. run scoreboard players set #base_crate_xp adv.temp 100
execute if score @s adv.victorian matches 1.. run function evercraft:advantage/victorian/apply_bonus
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"+100 XP",color:"green"},{text:" - ",color:"gray"},{text:"Ornate Patron",color:"dark_purple"},{text:" slain!",color:"gray"}]

# Companion memory: The Hunt
execute if entity @s[tag=companion.activepet] run function evercraft:companions/memories/on_patron_kill

# Achievement tracking
scoreboard players add @s ach.patron_kills 1
function evercraft:milestones/increment/patron_kill

# Guild contribution
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:150}

# Forever Coin — 1/500 flat chance (no DR scaling)
function evercraft:coins/patron_drop

# Class Affinity XP — ornate patron
scoreboard players set #delta ec.temp 24000
function evercraft:affinity/grant_current
