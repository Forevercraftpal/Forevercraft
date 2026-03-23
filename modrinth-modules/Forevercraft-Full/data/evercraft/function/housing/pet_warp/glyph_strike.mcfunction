# Home Pet Warp Strike — Glyph Per-Pet (ownership verified)
# Runs as: wolf/cat/parrot near a hearthstone glyph holder
# Verifies pet belongs to the player before striking

# Must be owned by the glyph holder
execute on owner unless entity @s[tag=hs.warp_owner] run return 0

# Delegate to shared strike logic
function evercraft:housing/pet_warp/pet_strike
