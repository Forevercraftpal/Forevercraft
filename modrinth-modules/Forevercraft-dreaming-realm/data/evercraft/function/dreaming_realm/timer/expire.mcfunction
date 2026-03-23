# Dreaming Realm — Timer Expired (Force Exit)
# Context: as @s = dreaming player

tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"The dream fades to nothing...","color":"#D4A574","italic":true}]

# Run normal wake up sequence
function evercraft:dreaming_realm/exit/wake_up
