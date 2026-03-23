# Shield Bash — Activate (runs as player with shield in mainhand)
# Checks cooldown, sets tier values, initiates raycast charge

# Cooldown check
execute if score @s ec.tk_bash_cd matches 1.. run return run title @s actionbar {"text":"Shield Bash recharging...","color":"red","italic":true}

# Set damage/knockback/cooldown by tier
function evercraft:artifacts/shields/bash/set_tier

# Sound: shield charge begins
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 1.0 0.6
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.8 0.8

# Start raycast from player's eye position
scoreboard players set #rc_steps ec.var 0
execute at @s anchored eyes positioned ^ ^ ^1 run function evercraft:artifacts/shields/bash/raycast

# Set cooldown (already stored in #tk_bash_cd_val by set_tier)
scoreboard players operation @s ec.tk_bash_cd = #tk_bash_cd_val ec.var
