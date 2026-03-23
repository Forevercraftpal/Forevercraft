# Guild Donation — Apply contribution from donation
# @s = donating player, #guild_donate_amt ec.temp = amount earned

# Show feedback
execute store result storage evercraft:guild temp.donate_amt int 1 run scoreboard players get #guild_donate_amt ec.temp
function evercraft:guild/contribution/donate_tellraw with storage evercraft:guild temp

# Add contribution
execute store result storage evercraft:guild temp.amount int 1 run scoreboard players get #guild_donate_amt ec.temp
function evercraft:guild/contribution/add with storage evercraft:guild temp

# Play sound
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.2

# Realm milestone: guild contribution
function evercraft:milestones/increment/guild_contribute
