# Bulwark Shield — Guard End (Remove Titan's Guard link)
# Run as player at player when guard timer expires or ally goes out of range

# Remove tags
tag @s remove ec.sp_guarding

# Clear effects from guarded ally
execute as @a[tag=ec.sp_guarded] run effect clear @s resistance
execute as @a[tag=ec.sp_guarded] run effect clear @s regeneration

# Remove guarded tag
tag @a[tag=ec.sp_guarded] remove ec.sp_guarded

# Clear self resistance (will be re-applied by passive next tick)
effect clear @s resistance

# === VFX — Link break ===
particle poof ~ ~1 ~ 0.5 0.5 0.5 0.05 10
particle dust{color:[0.3,0.3,0.6],scale:1.0} ~ ~1 ~ 1.0 1.0 1.0 0.03 8

# SFX
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 0.6 1.2

title @s actionbar [{"text":"Guard link broken...","color":"gray","italic":true}]
