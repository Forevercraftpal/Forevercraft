# Quest Preview — Open preview for a tier
# Macro: {tier:N,max:M}
# Run as player

# Set preview state
$scoreboard players set @s ec.qp_tier $(tier)
scoreboard players set @s ec.qp_active 1

# Roll 3 distinct options (2 for heroic)
$function evercraft:quests/preview/roll_options {tier:$(tier),max:$(max)}

# Display the options
$function evercraft:quests/preview/show_options {tier:$(tier)}
