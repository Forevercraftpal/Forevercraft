# === DUSTWALKER — COLUMN BORE ===
# Mines a 1x1 column downward (up to 32 blocks) until hitting non-shovel block
# Creates a clean vertical shaft

# Mine downward — each line is 1 block deeper
execute if block ~ ~-1 ~ #minecraft:mineable/shovel run setblock ~ ~-1 ~ air destroy
execute if block ~ ~-2 ~ #minecraft:mineable/shovel run setblock ~ ~-2 ~ air destroy
execute if block ~ ~-3 ~ #minecraft:mineable/shovel run setblock ~ ~-3 ~ air destroy
execute if block ~ ~-4 ~ #minecraft:mineable/shovel run setblock ~ ~-4 ~ air destroy
execute if block ~ ~-5 ~ #minecraft:mineable/shovel run setblock ~ ~-5 ~ air destroy
execute if block ~ ~-6 ~ #minecraft:mineable/shovel run setblock ~ ~-6 ~ air destroy
execute if block ~ ~-7 ~ #minecraft:mineable/shovel run setblock ~ ~-7 ~ air destroy
execute if block ~ ~-8 ~ #minecraft:mineable/shovel run setblock ~ ~-8 ~ air destroy
execute if block ~ ~-9 ~ #minecraft:mineable/shovel run setblock ~ ~-9 ~ air destroy
execute if block ~ ~-10 ~ #minecraft:mineable/shovel run setblock ~ ~-10 ~ air destroy
execute if block ~ ~-11 ~ #minecraft:mineable/shovel run setblock ~ ~-11 ~ air destroy
execute if block ~ ~-12 ~ #minecraft:mineable/shovel run setblock ~ ~-12 ~ air destroy
execute if block ~ ~-13 ~ #minecraft:mineable/shovel run setblock ~ ~-13 ~ air destroy
execute if block ~ ~-14 ~ #minecraft:mineable/shovel run setblock ~ ~-14 ~ air destroy
execute if block ~ ~-15 ~ #minecraft:mineable/shovel run setblock ~ ~-15 ~ air destroy
execute if block ~ ~-16 ~ #minecraft:mineable/shovel run setblock ~ ~-16 ~ air destroy
execute if block ~ ~-17 ~ #minecraft:mineable/shovel run setblock ~ ~-17 ~ air destroy
execute if block ~ ~-18 ~ #minecraft:mineable/shovel run setblock ~ ~-18 ~ air destroy
execute if block ~ ~-19 ~ #minecraft:mineable/shovel run setblock ~ ~-19 ~ air destroy
execute if block ~ ~-20 ~ #minecraft:mineable/shovel run setblock ~ ~-20 ~ air destroy
execute if block ~ ~-21 ~ #minecraft:mineable/shovel run setblock ~ ~-21 ~ air destroy
execute if block ~ ~-22 ~ #minecraft:mineable/shovel run setblock ~ ~-22 ~ air destroy
execute if block ~ ~-23 ~ #minecraft:mineable/shovel run setblock ~ ~-23 ~ air destroy
execute if block ~ ~-24 ~ #minecraft:mineable/shovel run setblock ~ ~-24 ~ air destroy
execute if block ~ ~-25 ~ #minecraft:mineable/shovel run setblock ~ ~-25 ~ air destroy
execute if block ~ ~-26 ~ #minecraft:mineable/shovel run setblock ~ ~-26 ~ air destroy
execute if block ~ ~-27 ~ #minecraft:mineable/shovel run setblock ~ ~-27 ~ air destroy
execute if block ~ ~-28 ~ #minecraft:mineable/shovel run setblock ~ ~-28 ~ air destroy
execute if block ~ ~-29 ~ #minecraft:mineable/shovel run setblock ~ ~-29 ~ air destroy
execute if block ~ ~-30 ~ #minecraft:mineable/shovel run setblock ~ ~-30 ~ air destroy
execute if block ~ ~-31 ~ #minecraft:mineable/shovel run setblock ~ ~-31 ~ air destroy
execute if block ~ ~-32 ~ #minecraft:mineable/shovel run setblock ~ ~-32 ~ air destroy

# VFX — dust trail down the shaft
particle block{block_state:"dirt"} ~ ~-5 ~ 0.2 5 0.2 0.1 30
playsound minecraft:block.gravel.break master @s ~ ~ ~ 1 0.6
playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 0.3 1.5
