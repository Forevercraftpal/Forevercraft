# The Venomweaver — Restore AI after stagger
# Guard: only restore if Venomweaver is still the active boss (prevents re-enabling AI on a new boss)
execute if score #rd_active ec.var matches 1 if score #rd_boss_id ec.var matches 10 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run data modify entity @s NoAI set value 0b
