# Crop Seed Auto-Replant — Scheduled every 2 seconds
# Seeds and plantable crops on farmland/soul_sand auto-plant themselves
# Similar to sapling replant but immediate (no timer) since farming is active gameplay

# Re-schedule
schedule function evercraft:world/crop_replant/tick 2s

# OPT: Single item tag check replaces 9 separate NBT scans (9 @e passes → 1)
execute as @e[type=item,nbt={OnGround:1b}] if items entity @s contents #evercraft:plantable_crops at @s run function evercraft:world/crop_replant/try_plant
