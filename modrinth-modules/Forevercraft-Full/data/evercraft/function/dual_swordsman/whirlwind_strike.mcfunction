# Dual Swordsman — Whirlwind Strike (360° passive proc)
# Run as @s at @s
# Hits ALL hostile mobs within 3 blocks, deals weapon damage

# Sound + particles
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.0 1.2
particle sweep_attack ~ ~0.8 ~ 1.5 0.3 1.5 0.5 8

# Damage all nearby hostile entities (with affinity boost)
tag @s add ec.aff_attacker
execute if score @s ec.ds_tier matches 1..2 run scoreboard players set #aff_base ec.temp 6
execute if score @s ec.ds_tier matches 3..4 run scoreboard players set #aff_base ec.temp 8
execute if score @s ec.ds_tier matches 5..6 run scoreboard players set #aff_base ec.temp 10
execute if score @s ec.ds_tier matches 7 run scoreboard players set #aff_base ec.temp 14
function evercraft:affinity/boost_damage
execute as @e[distance=..3,type=!player,type=!armor_stand,type=!item,type=!item_frame,type=!glow_item_frame,type=!marker,type=!interaction,type=!text_display,type=!painting] run function evercraft:affinity/deal_damage with storage evercraft:affinity temp
tag @s remove ec.aff_attacker

# Track whirlwind kills for metamorphosis (kills tracked by advancement separately)
# Alternating particle colors (blue/orange) for visual flair
particle dust_color_transition{from_color:[0.2,0.2,0.8],to_color:[1,0.8,0.4],scale:0.2} ~ ~1.0 ~ 2.0 0.5 2.0 0.1 16
