# Grand Illusionist — Ravager Died (Phase 3 panic trigger)
# Boss drops all illusions, panics, attacks recklessly

scoreboard players set #rd_gi_ravager_dead ec.var 1

# Remove all copies and totems
kill @e[tag=ec.rd_gi_fake]
kill @e[tag=ec.rd_gi_totem]

# Boss panics — reduce armor (vulnerability)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:raid_boss/panic -8.0 add_value

# Increase attack speed via movement speed
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:raid_boss/panic 0.5 add_multiplied_base

# Dialogue
tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"\"NO! MY BEAST! YOU WILL PAY FOR THIS!\"","color":"red","bold":true}]
tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"The Illusionist panics — no more tricks!","color":"green","italic":true}]

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 3
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.evoker.hurt hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5
