# Party Sidebar — One-time name capture
# Uses copy_name loot table to get raw username (no team prefix)
# Temporary hopper minecart saves/restores mainhand (read-only in 1.21.5+)

# Safety: kill any stale carts
kill @e[type=hopper_minecart,tag=ec.pty_cart]

summon hopper_minecart ~ 320 ~ {Tags:["ec.pty_cart"]}

# Save mainhand to cart
item replace entity @e[type=hopper_minecart,tag=ec.pty_cart,limit=1] container.0 from entity @s weapon.mainhand

# Replace mainhand with name-capture item (copy_name gives raw username)
loot replace entity @s weapon.mainhand loot evercraft:party/sidebar/name_capture

# Read the raw username from the generated item's custom_name
data modify storage eden:temp party_player_name set from entity @s SelectedItem.components."minecraft:custom_name"

# Restore original mainhand from cart
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.pty_cart,limit=1] container.0

# Set sidebar display name
function evercraft:party/sidebar/set_display_name with storage eden:temp

# Cleanup (clear Items so cart doesn't drop them)
data modify entity @e[type=hopper_minecart,tag=ec.pty_cart,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=ec.pty_cart]

# Mark name as captured — skip re-capture on future ticks
tag @s add ec.pty_named
