# Guild Expedition — Read guild level, compute mult = 125 + ((level-1) × 375 / 99)
# @s = guild marker
# Result is ×100 scale: 125 = 1.25x at level 1, 500 = 5.00x at level 100

execute store result score #exp_glvl ec.temp run data get entity @s data.level

# mult = 125 + ((level - 1) * 375 / 99), clamped 125-500
# Level 1 = 1.25x base, level 100 = 5.00x max
scoreboard players remove #exp_glvl ec.temp 1
scoreboard players operation #exp_glvl ec.temp *= #375 ec.const
scoreboard players operation #exp_glvl ec.temp /= #99 ec.const
scoreboard players add #exp_glvl ec.temp 125
execute if score #exp_glvl ec.temp matches ..125 run scoreboard players set #exp_glvl ec.temp 125
execute if score #exp_glvl ec.temp matches 501.. run scoreboard players set #exp_glvl ec.temp 500

execute if score #exp_glvl ec.temp > #expedition_mult ec.var run scoreboard players operation #expedition_mult ec.var = #exp_glvl ec.temp
