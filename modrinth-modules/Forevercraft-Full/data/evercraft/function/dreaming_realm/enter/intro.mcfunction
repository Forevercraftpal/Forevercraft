# Dreaming Realm — Intro Narration
# Timed tellraw sequence delivered to the dreaming player
# Context: as @s = dreaming player

# Immediate (plays during blindness — player reads it as vision clears)
tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"You feel the world dissolve around you...","color":"#D4A574","italic":true}]

# Delayed narration
schedule function evercraft:dreaming_realm/enter/intro_2 3s
schedule function evercraft:dreaming_realm/enter/intro_3 7s

# Route to first challenge after intro settles
schedule function evercraft:dreaming_realm/challenges/start_first 10s
