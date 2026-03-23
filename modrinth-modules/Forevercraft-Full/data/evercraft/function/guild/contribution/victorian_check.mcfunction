# Guild Contribution → Victorian XP Tracker
# Every 100 contribution earned grants 1000 XP points
# $(amount) = contribution just added (from macro caller)
# @s = player who earned contribution

# Skip if not in a guild
execute unless score @s ec.guild_id matches 1.. run return 0

# Add amount to Victorian tracker
$scoreboard players add @s ec.gc_victorian $(amount)

# Check if threshold reached (may trigger multiple times for large donations)
execute if score @s ec.gc_victorian >= #ge_victorian_threshold ec.const run function evercraft:guild/contribution/victorian_loop
