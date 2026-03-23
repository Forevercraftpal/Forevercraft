# Duel — Death Fallback (runs as duelist who somehow died despite health check)
# This should rarely fire — totem_save catches most cases via health monitoring.
# keepInventory is ON so items + XP are preserved. Player respawns at bed automatically.

# Totem pop visual (death intercepted)
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# Prevent tomb from processing this death
scoreboard players set @s ec.tomb_death 0

# If duel already resolved by totem_save, skip
execute if entity @s[tag=duel.loser] run return 0
execute if entity @s[tag=duel.winner] run return 0

# Tag roles
tag @s add duel.loser
execute as @a[tag=ec.duel_active_tag,tag=!duel.loser] run tag @s add duel.winner

# Apply loser penalties (they'll respawn at bed via vanilla death)
# Darkness + Nausea for 7 seconds (knockout feel)
effect give @s minecraft:darkness 7 0 false
effect give @s minecraft:nausea 7 0 false
# 1-hour Mining Fatigue + Weakness
effect give @s minecraft:mining_fatigue 3600 0 false
effect give @s minecraft:weakness 3600 0 false
scoreboard players add @s ec.duel_today 1

# Defeat title (shows after respawn)
title @s times 5 40 15
title @s title {text:"DEFEATED",color:"red",bold:true}
title @s subtitle {text:"Knocked out!",color:"gray"}

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"The nightmare is over! You either had a horrible dream or got knocked out!",color:"dark_purple",italic:true}]

# Resolve
function evercraft:duel/end/resolve
