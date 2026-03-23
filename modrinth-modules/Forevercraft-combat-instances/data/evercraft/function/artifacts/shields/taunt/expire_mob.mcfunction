# Taunt — Expire single mob
# OPT: Consolidates tag removal + score cleanup into 1 entity touch (was 3 @e scans)
# Run as: taunted mob whose expire time has passed

tag @s remove ec.taunted
scoreboard players reset @s ec.tk_owner
scoreboard players reset @s ec.tk_expire
