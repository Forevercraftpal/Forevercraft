# === EARTHSONG — DISPATCH MINE ===
# Run as player, position context still at broken block (via marker)
# Choose: sneaking = vein mine, standing = 5x5 area mine

# Get the broken block position back (we're now as @s=player, but need to run at marker)
execute at @e[type=marker,tag=ec.st_pick_target,limit=1,sort=nearest] if predicate evercraft:is_sneaking run function evercraft:craftforever/spirit_tools/earthsong/vein_mine
execute at @e[type=marker,tag=ec.st_pick_target,limit=1,sort=nearest] unless predicate evercraft:is_sneaking run function evercraft:craftforever/spirit_tools/earthsong/area_mine_5x5

# Particles at break site
execute at @e[type=marker,tag=ec.st_pick_target,limit=1,sort=nearest] run particle enchant ~ ~0.5 ~ 0.5 0.5 0.5 1 15
