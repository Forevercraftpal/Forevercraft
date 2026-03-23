# The Deepcrawler — Rail Lever Puzzle Tick
# 4 levers along rail lines
# Boss emits a rumble sequence — activate levers in correct order to slam cart into boss
# Correct sequence: 200 damage to boss. Wrong: all 4 carts fire at players

# Lever particles (always visible)
execute as @e[tag=ec.rd_dc_lever] at @s run particle minecraft:dust{color:[0.8,0.6,0.2],scale:0.8} ~ ~1 ~ 0.3 0.3 0.3 0 2

# Check lever clicks — only process if a sequence is active (#rd_dc_lever_seq 1-4)
execute if score #rd_dc_lever_seq ec.var matches 1..4 run function evercraft:raids/boss/deepcrawler/puzzle/lever_check
