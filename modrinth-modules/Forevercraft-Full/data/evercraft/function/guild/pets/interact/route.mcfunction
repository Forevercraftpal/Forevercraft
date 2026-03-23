# Guild Companion — Route interaction type
# Run as: guild member player, at player position
# #gc_interact_slot gc.slot = interacted companion slot
# #gc_interact_owner companion.id = companion owner's ID

# Sneak + click by OWNER only → retrieve
execute if predicate evercraft:companions/is_sneaking if score @s companion.id = #gc_interact_owner companion.id run return run function evercraft:guild/pets/interact/retrieve_click

# Holding food → try feeding (any guild member can feed)
execute unless items entity @s weapon.mainhand air if function evercraft:guild/pets/interact/feed run return 1

# Empty hand or non-food → pet (any guild member)
function evercraft:guild/pets/interact/pet
