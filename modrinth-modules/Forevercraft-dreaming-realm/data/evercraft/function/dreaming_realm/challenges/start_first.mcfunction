# Dreaming Realm — Start Next Challenge (scheduled after intro or completion)
# Finds the dreaming player and routes them to the next available challenge

# Bail if dream ended (timer expired, death, /trigger wake)
execute unless entity @a[tag=dr.in_realm] run return 0

execute as @a[tag=dr.in_realm] run function evercraft:dreaming_realm/challenges/route
