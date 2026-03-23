# Taunt Expiry Check — runs every 1s
# Removes taunt from mobs whose expiry gametime has passed

# Get current gametime
execute store result score #tk_now ec.var run time query gametime

# OPT: For expired taunts: untag + cleanup in one pass (3 @e scans → 1 + 1)
execute as @e[tag=ec.taunted] if score #tk_now ec.var >= @s ec.tk_expire run function evercraft:artifacts/shields/taunt/expire_mob
