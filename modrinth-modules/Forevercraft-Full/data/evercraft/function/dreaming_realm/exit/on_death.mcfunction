# Dreaming Realm — Death Handler
# Player died in the Dreaming Realm: wake up instead of tomb
# No item loss (keepInventory is globally true), no tomb spawned
# Context: as @s = dead player (from tick.mcfunction death detection)

# Totem pop visual (death intercepted)
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# Notify player
tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"You died in the dream... but it was only a dream.","color":"#D4A574","italic":true}]

# Clear tomb death flag BEFORE wake_up removes dr.in_realm tag
# (wake_up → cleanup removes dr.in_realm, which would let tick.mcfunction's
#  normal tomb handler match this player if ec.tomb_death is still 1+)
scoreboard players set @s ec.tomb_death 0

# Run standard wake up (destroy arena, tp back, clear effects)
function evercraft:dreaming_realm/exit/wake_up
