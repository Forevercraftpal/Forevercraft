# Hollow Sovereign — Silence Tick (damage reflection active)
# Boss reflects damage. Detect hits via HurtTime and punish attackers.

# Countdown
scoreboard players remove #rd_hs_silence_timer ec.var 1

# Visual feedback — barrier particles around boss
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.8 0.8 0.8 0.3 5

# Detect if boss was hit during silence (HurtTime:10s = just got hit this tick)
execute as @e[type=!player,tag=ec.rd_boss,limit=1,nbt={HurtTime:10s}] at @s run function evercraft:raids/boss/hollow_sovereign/abilities/reflect_damage

# End silence when timer expires
execute if score #rd_hs_silence_timer ec.var matches ..0 run function evercraft:raids/boss/hollow_sovereign/abilities/end_silence
