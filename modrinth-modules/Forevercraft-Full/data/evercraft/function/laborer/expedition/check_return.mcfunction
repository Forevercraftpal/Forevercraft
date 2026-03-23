# Check if ON_EXPEDITION laborer should return (duration elapsed)
# Runs as: laborer villager entity. #lb_now = current gametime.

# remaining = exp_dur - (now - exp_start)
scoreboard players operation #lb_check ec.lb_temp = #lb_now ec.lb_temp
scoreboard players operation #lb_check ec.lb_temp -= @s ec.lb_exp_start
execute unless score #lb_check ec.lb_temp >= @s ec.lb_exp_dur run return 0

# === EXPEDITION COMPLETE — RETURN ===
scoreboard players set @s ec.lb_state 3

# Remove invisibility
effect clear @s invisibility

# Increment expedition count
scoreboard players add @s ec.lb_expeditions 1

# Visual: return effect
particle minecraft:dust{color:[0.2,1.0,0.4],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 15
playsound minecraft:entity.player.levelup master @a[tag=ec.lb_owner] ~ ~ ~ 0.5 1.5

# Roll for adventure event (5% base, 10% at quality 10+)
function evercraft:laborer/adventure/roll

# Notify owner
tellraw @a[tag=ec.lb_owner] [{"text":"[Laborer] ","color":"gold"},{"text":"Your laborer has returned from an expedition! Right-click to collect loot.","color":"green"}]
