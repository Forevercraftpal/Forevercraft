# World Boss — Generic Boss Setup (macro)
# Called with storage evercraft:bosses temp
# Expects: $(boss_name), $(boss_color), $(base_armor), $(base_speed), $(base_damage), $(boss_scale), $(bar_color)
# Must be executed AS the boss entity, AT the boss position
# HP is applied SEPARATELY after this via apply_hp macro

# Apply visual scale
$attribute @s scale base set $(boss_scale)

# Apply base armor
$attribute @s armor modifier add evercraft:boss/base $(base_armor) add_value

# Apply base speed bonus
$attribute @s movement_speed modifier add evercraft:boss/base $(base_speed) add_multiplied_base

# Apply base damage bonus
$attribute @s attack_damage modifier add evercraft:boss/base $(base_damage) add_multiplied_base

# Apply knockback resistance (50%)
attribute @s knockback_resistance modifier add evercraft:boss/base 0.5 add_value

# Entity properties
data merge entity @s {Silent:1b,PersistenceRequired:1b,Glowing:1b}

# Prevent burning in daylight (wither_skeleton, phantom types) — hidden particles
effect give @s fire_resistance infinite 0 true

# Custom name
$data modify entity @s CustomName set value [{text:"☠ ",color:"dark_red"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" ☠",color:"dark_red"}]
data modify entity @s CustomNameVisible set value 1b

# Create bossbar
bossbar remove evercraft:world_boss
$bossbar add evercraft:world_boss [{text:"☠ ",color:"dark_red"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" ☠",color:"dark_red"}]
$bossbar set evercraft:world_boss color $(bar_color)

# Store boss identity for phase/seasonal/kill announcements (accessible via macro calls)
$data modify storage evercraft:bosses active.boss_name set value "$(boss_name)"
$data modify storage evercraft:bosses active.boss_color set value "$(boss_color)"

# Set global state
scoreboard players set #wb_active ec.var 1
scoreboard players set #wb_phase ec.var 1
scoreboard players set #wb_timer ec.var 0
scoreboard players set #wb_ability_cd ec.var 0
scoreboard players set #wb_season_cd ec.var 0
scoreboard players set #wb_missing ec.var 0

# Snapshot season at spawn — prevents mid-fight season change from switching effects
scoreboard players operation #wb_season ec.var = #season_id ec.var

# Apply seasonal modifiers (attribute buffs + announcement)
function evercraft:bosses/seasonal/apply

# Spawn VFX
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 20
particle minecraft:witch ~ ~1 ~ 1 1 1 0.5 50
particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 100
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 0.6
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1.0 0.8

# Global announcement
tellraw @a [{text:""},{text:"═══════════════════════════════",color:"dark_red"}]
$tellraw @a [{text:"  ☠ ",color:"dark_red"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" has awakened!",color:"red"}]
# Totem summon: show summoner name. Natural spawn: show flavor text.
execute if entity @a[tag=wb.summoner,tag=!wb.natural_spawn] run tellraw @a [{text:"  ",color:"dark_gray"},{text:"Summoned by ",color:"gray"},{selector:"@a[tag=wb.summoner,limit=1]",color:"yellow"}]
execute if entity @a[tag=wb.natural_spawn] run tellraw @a [{text:"  ",color:"dark_gray"},{text:"Emerged from the wilds near ",color:"gray"},{selector:"@a[tag=wb.natural_spawn,limit=1]",color:"yellow"}]
# Seasonal flavor (boss name woven in)
$execute if score #season_id ec.var matches 0 run tellraw @a [{text:"  ☁ ",color:"gold"},{text:"Autumn gales swirl around ",color:"yellow",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"...",color:"yellow",italic:true}]
$execute if score #season_id ec.var matches 1 run tellraw @a [{text:"  ❄ ",color:"aqua"},{text:"A bitter frost clings to ",color:"blue",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"...",color:"blue",italic:true}]
$execute if score #season_id ec.var matches 2 run tellraw @a [{text:"  ✿ ",color:"green"},{text:"Thorned vines coil around ",color:"dark_green",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"...",color:"dark_green",italic:true}]
$execute if score #season_id ec.var matches 3 run tellraw @a [{text:"  ☀ ",color:"yellow"},{text:"Scorching heat radiates from ",color:"gold",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"...",color:"gold",italic:true}]
tellraw @a [{text:"═══════════════════════════════",color:"dark_red"}]
