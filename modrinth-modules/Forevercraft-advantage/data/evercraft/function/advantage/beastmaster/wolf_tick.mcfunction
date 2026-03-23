# Beastmaster — Wolf Damage Scaling (1s schedule)
# Scales wolf attack damage based on owner's beastmaster level
# At level 25, wolf damage = diamond sword level (~7 damage, base is 4)

schedule function evercraft:advantage/beastmaster/wolf_tick 20t

# Skip if no one has beastmaster
execute unless entity @a[scores={adv.beastmaster=1..}] run return 0

# For each tamed wolf, check owner and scale damage
execute as @e[type=wolf,tag=!adv.wolf_set] run function evercraft:advantage/beastmaster/check_wolf

# Re-check all wolves every 60 seconds (for level changes, new wolves)
scoreboard players add #wolf_timer adv.temp 1
execute if score #wolf_timer adv.temp matches 60.. run tag @e[type=wolf] remove adv.wolf_set
execute if score #wolf_timer adv.temp matches 60.. run scoreboard players set #wolf_timer adv.temp 0

# Beastmaster P2: Pack Tactics — nearby tamed wolves get Strength I + Resistance I aura
# Runs as each player with P2, applies 25s effects to wolves within 16 blocks (refreshed every 20t)
execute as @a[scores={adv.pres_beas=2..}] at @s run effect give @e[type=wolf,distance=..16] minecraft:strength 25 0 true
execute as @a[scores={adv.pres_beas=2..}] at @s run effect give @e[type=wolf,distance=..16] minecraft:resistance 25 0 true
execute as @a[scores={adv.pres_beas=2..}] at @s run effect give @e[type=fox,distance=..16,tag=ec.fox_tamed] minecraft:strength 25 0 true
execute as @a[scores={adv.pres_beas=2..}] at @s run effect give @e[type=fox,distance=..16,tag=ec.fox_tamed] minecraft:resistance 25 0 true
execute as @a[scores={adv.pres_beas=2..}] at @s run effect give @e[type=ocelot,distance=..16,tag=ec.ocelot_tamed] minecraft:strength 25 0 true
execute as @a[scores={adv.pres_beas=2..}] at @s run effect give @e[type=ocelot,distance=..16,tag=ec.ocelot_tamed] minecraft:resistance 25 0 true

# Beastmaster P3: War Cry cooldown decrement
execute as @a[scores={adv.pa_beas3_cd=1..}] run scoreboard players remove @s adv.pa_beas3_cd 1

# Beastmaster 25: cats kill nearby creepers
function evercraft:advantage/beastmaster/cat_creeper
