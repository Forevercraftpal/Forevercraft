# Tome of Experience — On Use (right-click handler)
# Triggered by using_item advancement (consume_seconds:999999 = never consumed)
# Advancement stays granted for 3s to prevent spam, then revoked by scheduled reset

# Only works from mainhand
execute unless items entity @s weapon.mainhand book[custom_data~{tome_of_experience:true}] run return fail

# Schedule advancement revoke after 3s cooldown (always, regardless of outcome)
tag @s add ec.tome_cooldown
schedule function evercraft:tome/reset_cooldown 60t append

# Branch: shift+right-click = withdraw, right-click = absorb
execute if predicate evercraft:is_sneaking run return run function evercraft:tome/withdraw
function evercraft:tome/absorb
