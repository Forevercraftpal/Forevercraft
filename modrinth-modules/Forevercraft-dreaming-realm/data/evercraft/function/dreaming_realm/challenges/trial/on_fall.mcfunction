# Dreamer's Trial — Fell Off Platform
# Context: as @s = dreaming player (dr.trial_active)
# Teleport back to the SE landing platform center

execute at @e[type=marker,tag=dr.center,limit=1] run tp @s ~14 302 ~14
playsound entity.enderman.teleport master @s ~ ~ ~ 0.5 0.8
tellraw @s [{"text":""},{"text":"  ","color":"gray"},{"text":"You slipped from the dream platforms...","color":"#D4A574","italic":true}]
