# Soulstring — Singularity Per-Tick Processing
# Run as singularity marker, at its position
# Strong pull: 8-block radius (spirit: 12), damage per tick, dark particles

# Decrement timer
scoreboard players remove @s ec.sp_timer 1

# === STRONG INWARD PULL ===
# Pull all non-excluded entities toward the singularity center
execute as @e[distance=0.5..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s facing entity @e[tag=ec.sp_singularity,sort=nearest,limit=1,distance=..20] feet run tp @s ^ ^ ^1.0

# Also pull players (but weaker — 0.4 blocks per tick)
execute as @a[distance=0.5..8] at @s facing entity @e[tag=ec.sp_singularity,sort=nearest,limit=1,distance=..20] feet run tp @s ^ ^ ^0.3

# === DAMAGE every 5 ticks (3 damage per pulse) ===
execute store result score #sing_mod ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #sing_mod ec.temp %= #5 ec.const
execute if score #sing_mod ec.temp matches 0 run execute as @e[distance=..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 3 minecraft:magic

# === VFX — Dark swirling void ===
particle reverse_portal ~ ~1 ~ 3.0 3.0 3.0 0.15 25
particle dust{color:[0.05,0.0,0.1],scale:2.5} ~ ~1 ~ 4.0 4.0 4.0 0.05 15
particle enchant ~ ~1 ~ 4.0 2.0 4.0 0.2 10
particle smoke ~ ~1 ~ 2.0 2.0 2.0 0.05 8

# Inward-spiraling dust
particle dust{color:[0.3,0.0,0.5],scale:1.0} ~ ~1 ~ 6.0 1.0 6.0 0.08 12

# === SFX — Ominous hum every 10 ticks ===
execute store result score #sing_sfx ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #sing_sfx ec.temp %= #10 ec.const
execute if score #sing_sfx ec.temp matches 0 run playsound minecraft:entity.enderman.ambient player @a ~ ~ ~ 0.6 0.3
execute if score #sing_sfx ec.temp matches 0 run playsound minecraft:block.portal.ambient player @a ~ ~ ~ 0.3 0.5

# === COLLAPSE when timer hits 0 ===
execute if score @s ec.sp_timer matches ..0 run function evercraft:spirit/abilities/sabrewing/singularity_collapse
