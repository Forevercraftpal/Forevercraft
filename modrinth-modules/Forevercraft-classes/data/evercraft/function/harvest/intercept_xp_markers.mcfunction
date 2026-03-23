# Harvest XP — Intercept stone_button XP markers on the ground
# Block loot tables always spawn items as entities; this catches them
# before they're visible and awards XP directly to the nearest player.
# OPT: Self-scheduling at 4t instead of per-tick (items have pickup_delay, 4t is well within)

schedule function evercraft:harvest/intercept_xp_markers 4t

# OPT: Tag-based scan — only check untagged items, avoids deep NBT on all items
# Items that aren't harvest XP markers get tagged and skipped on future scans
execute as @e[type=item,tag=!ec.hxp_checked] at @s run function evercraft:harvest/check_xp_item
