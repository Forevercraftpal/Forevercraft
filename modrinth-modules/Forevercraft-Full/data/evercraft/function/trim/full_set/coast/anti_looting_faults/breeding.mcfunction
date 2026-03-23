# Coast Trim — Anti-Looting Fault: Breeding
# Removes dynamically-added looting from weapon when breeding animals
# Prevents looting from affecting breeding output

# Revoke the advancement so it can re-trigger
advancement revoke @s only evercraft:trim/anti_breeding

# Only remove if coast looting is currently applied
execute if entity @s[tag=full_set_coast_got_looting] run function evercraft:trim/full_set/coast/looting_remove
