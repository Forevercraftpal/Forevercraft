# Chrono Shard — consume_item advancement callback
# Runs as @s = player who consumed the shard

# Revoke advancement immediately so it can re-trigger
advancement revoke @s only evercraft:chrono_shard/on_use

# Spam protection — don't re-trigger if GUI is already open
execute if score @s ec.cs_active matches 1 run return 0

# Tag for delayed restore (consume_item fires BEFORE item removal)
tag @s add ec.cs_restore

# Set flag so tick function knows to open GUI
scoreboard players set @s ec.cs_use 1
