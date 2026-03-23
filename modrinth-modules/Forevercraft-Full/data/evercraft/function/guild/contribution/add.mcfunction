# Guild Contribution — Add contribution to player
# $(amount) = contribution amount to add
# @s = player who earned contribution

# Skip if not in a guild
execute unless score @s ec.guild_id matches 1.. run return 0

# Add contribution (cap at 50000)
$scoreboard players add @s ec.guild_contrib $(amount)
execute if score @s ec.guild_contrib > #guild_max_contrib ec.const run scoreboard players operation @s ec.guild_contrib = #guild_max_contrib ec.const

# Check for rank promotion
function evercraft:guild/contribution/check_rank

# Add 2x contribution as guild XP
$scoreboard players set #guild_xp_add ec.temp $(amount)
scoreboard players operation #guild_xp_add ec.temp *= #2 ec.const
execute if score #guild_xp_add ec.temp matches 1.. run function evercraft:guild/contribution/add_guild_xp

# Victorian tree XP: every 100 contribution → 1000 XP
$function evercraft:guild/contribution/victorian_check {amount:$(amount)}
