# Duel — Totem Life Save (runs as the duelist who dropped to critical health)
# Simulates totem of undying: save from death, heal, effects, then teleport to bed

# === IMMEDIATE SURVIVAL ===
# Full heal + brief invulnerability to prevent death during teleport
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:resistance 3 4 true

# === TOTEM ANIMATION ===
# Play the totem particles + sound (vanilla totem feel)
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# === TAG ROLES ===
tag @s add duel.loser
execute as @a[tag=ec.duel_active_tag,tag=!duel.loser] run tag @s add duel.winner

# === LOSER PENALTIES ===
# Darkness + Nausea for 7 seconds (knockout feel)
effect give @s minecraft:darkness 7 0 false
effect give @s minecraft:nausea 7 0 false

# 1-hour Mining Fatigue + Weakness
effect give @s minecraft:mining_fatigue 3600 0 false
effect give @s minecraft:weakness 3600 0 false

# Increment daily duel count
scoreboard players add @s ec.duel_today 1

# Defeat title
title @s times 5 40 15
title @s title {text:"DEFEATED",color:"red",bold:true}
title @s subtitle {text:"Knocked out!",color:"gray"}

# Sound
playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.3 0.5

# Chat message
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The nightmare is over! You either had a horrible dream or got knocked out!",color:"dark_purple",italic:true}]

# === TELEPORT TO BED/SPAWN ===
# Store spawn coordinates to storage for macro TP
execute if data entity @s respawn run function evercraft:duel/active/tp_to_spawn
# If no respawn point set, teleport to world spawn
execute unless data entity @s respawn run spreadplayers ~ ~ 0 1 false @s

# === RESOLVE DUEL ===
function evercraft:duel/end/resolve
