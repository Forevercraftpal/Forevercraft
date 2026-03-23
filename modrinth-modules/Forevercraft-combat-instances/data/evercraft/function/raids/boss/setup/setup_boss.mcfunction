# Spirit Raids — Generic Boss Setup (macro)
# Called with storage evercraft:raids temp
# Expects: $(boss_name), $(boss_color), $(base_armor), $(base_speed), $(base_damage), $(boss_scale), $(bar_color)
# Must be executed AS the boss entity, AT the boss position

# Apply visual scale
$attribute @s scale base set $(boss_scale)

# Apply base armor
$attribute @s armor modifier add evercraft:raid_boss/base $(base_armor) add_value

# Apply base speed bonus
$attribute @s movement_speed modifier add evercraft:raid_boss/base $(base_speed) add_multiplied_base

# Apply base damage bonus
$attribute @s attack_damage modifier add evercraft:raid_boss/base $(base_damage) add_multiplied_base

# Apply knockback resistance (80% — raid bosses are harder to push)
attribute @s knockback_resistance modifier add evercraft:raid_boss/base 0.8 add_value

# Entity properties
data merge entity @s {Silent:1b,PersistenceRequired:1b}

# Prevent burning in daylight — hidden particles
effect give @s fire_resistance infinite 0 true

# Custom name
$data modify entity @s CustomName set value [{text:"💀 ",color:"dark_red"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" 💀",color:"dark_red"}]
data modify entity @s CustomNameVisible set value 1b

# Create bossbar
bossbar remove evercraft:raid_boss
$bossbar add evercraft:raid_boss [{text:"💀 ",color:"dark_red"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" 💀",color:"dark_red"}]
$bossbar set evercraft:raid_boss color $(bar_color)

# Store boss identity for announcements
$data modify storage evercraft:raids active.boss_name set value "$(boss_name)"
$data modify storage evercraft:raids active.boss_color set value "$(boss_color)"

# Set global state
scoreboard players set #rd_active ec.var 1
scoreboard players set #rd_boss_phase ec.var 1
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_ability_cd ec.var 0
scoreboard players set #rd_phase_lock ec.var 0

# Spawn VFX — more dramatic than world bosses
particle minecraft:explosion ~ ~1 ~ 2 2 2 0.5 30
particle minecraft:witch ~ ~1 ~ 2 2 2 0.5 80
particle minecraft:reverse_portal ~ ~1 ~ 1 2 1 0.1 200
particle minecraft:soul_fire_flame ~ ~1 ~ 1 2 1 0.05 60
playsound minecraft:entity.wither.spawn master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.4
playsound minecraft:entity.ender_dragon.growl master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.6
playsound minecraft:entity.elder_guardian.curse master @a[tag=ec.rd_participant] ~ ~ ~ 0.8 0.8
