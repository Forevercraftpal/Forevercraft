# T10 Collapse Phase 4 — Final collapse
execute unless score #tt_active ec.var matches 1 run return 0
execute as @a[tag=ec.tt_player,scores={ec.tt_tier=10}] at @s run function evercraft:craftforever/trials/types/mining/do_collapse_4
