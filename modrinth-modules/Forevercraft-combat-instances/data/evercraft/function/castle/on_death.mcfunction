# Infinite Castle — Death Intercept (runs BEFORE tomb system)
# Run as: ic.player who died (ec.tomb_death=1..)
# Prevents tomb from capturing items — keepInventory preserves everything

# Totem pop visual (death intercepted)
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# Prevent tomb from processing this death
scoreboard players set @s ec.tomb_death 0

# Remove from castle (updates record, teleports to bed, removes tags)
function evercraft:castle/remove_player

# Check if any players remain
execute unless entity @a[tag=ic.player] run function evercraft:castle/fail
