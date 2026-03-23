# Dungeon Modifiers — Apply effects to newly spawned mobs
# Called from apply_scaling after difficulty scaling, targets dg.mob entities
# Only applies to mobs that just received dg.scaled tag this tick

# 1 = Relentless: Speed I (faster movement)
execute if score #dg_modifier ec.var matches 1 run effect give @e[tag=dg.mob] speed 999999 0 true

# 2 = Fortified: Resistance I (take less damage)
execute if score #dg_modifier ec.var matches 2 run effect give @e[tag=dg.mob] resistance 999999 0 true

# 4 = Volatile: +100% knockback resistance (immovable)
execute if score #dg_modifier ec.var matches 4 as @e[tag=dg.mob] run attribute @s knockback_resistance modifier add dg_modifier 1.0 add_value

# 5 = Undying: Regeneration I (slow health regen)
execute if score #dg_modifier ec.var matches 5 run effect give @e[tag=dg.mob] regeneration 999999 0 true

# 6 = Frenzied: Strength I (deal more damage)
execute if score #dg_modifier ec.var matches 6 run effect give @e[tag=dg.mob] strength 999999 0 true
