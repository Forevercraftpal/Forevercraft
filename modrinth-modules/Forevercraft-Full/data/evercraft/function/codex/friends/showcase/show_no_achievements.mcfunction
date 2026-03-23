# Showcase — No achievements available message

tellraw @s [{text:"\u2726 ",color:"dark_gray"},{text:"You haven't unlocked any showcase achievements yet!",color:"yellow"},{text:" \u2726",color:"dark_gray"}]

# Return to slots view
tag @s remove ec.sc_in_picker
function evercraft:codex/friends/showcase/spawn_slots
