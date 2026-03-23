# Mythical Patron Kill Reward — 500 XP
advancement revoke @s only evercraft:mobs/patrons/kill/mythical
experience add @s 500 points
execute if score @s adv.victorian matches 1.. run scoreboard players set #base_crate_xp adv.temp 500
execute if score @s adv.victorian matches 1.. run function evercraft:advantage/victorian/apply_bonus
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1.0 1.0
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.2
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.5 1.0
tellraw @s [{text:"+500 XP",color:"green",bold:true},{text:" - ",color:"gray"},{text:"MYTHICAL PATRON",color:"gold",bold:true},{text:" VANQUISHED!",color:"gold",bold:true}]

# Campfire Stories — record mythical patron kill
function evercraft:campfire_stories/record/patron_mythical

# Companion memory: The Hunt
execute if entity @s[tag=companion.activepet] run function evercraft:companions/memories/on_patron_kill

# Achievement tracking
scoreboard players add @s ach.patron_kills 1
function evercraft:milestones/increment/patron_kill

# Guild contribution
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:250}

# Forever Coin — 1/500 flat chance (no DR scaling)
function evercraft:coins/patron_drop

# Class Affinity XP — mythical patron
scoreboard players set #delta ec.temp 60000
function evercraft:affinity/grant_current
