# Pack Mule — Menu Tick (click detection, 2t schedule)
# Checks for slot clicks and close button

# Reschedule only if someone is in the menu
execute unless entity @a[tag=ec.mule_in_menu] run return fail
schedule function evercraft:buddy/abilities/pack_mule/tick 2t replace

# Process clicks for the player in the menu
execute as @a[tag=ec.mule_in_menu] run function evercraft:buddy/abilities/pack_mule/check_clicks
