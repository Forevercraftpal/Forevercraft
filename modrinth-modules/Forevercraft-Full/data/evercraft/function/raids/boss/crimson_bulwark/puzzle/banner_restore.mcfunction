# The Crimson Bulwark — Restore Armor After Banner Weakness
# Guard: only restore if Crimson Bulwark is still the active boss
execute if score #rd_active ec.var matches 1 if score #rd_boss_id ec.var matches 13 as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s armor modifier remove evercraft:rd_boss/banner_weak
