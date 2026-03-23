# World Boss — Give boss-exclusive artifact by boss_id
# Called as the receiving player

playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 0.8
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Give artifact (inv has space)
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 1 run loot give @s loot evercraft:bosses/exclusive/hollow_king
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 2 run loot give @s loot evercraft:bosses/exclusive/verdant_warden
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 3 run loot give @s loot evercraft:bosses/exclusive/stormforged
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 4 run loot give @s loot evercraft:bosses/exclusive/tidecaller
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 5 run loot give @s loot evercraft:bosses/exclusive/earthshaker
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 6 run loot give @s loot evercraft:bosses/exclusive/nightmare
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 7 run loot give @s loot evercraft:bosses/exclusive/infernal_titan
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 8 run loot give @s loot evercraft:bosses/exclusive/soul_warden
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 9 run loot give @s loot evercraft:bosses/exclusive/crimson_behemoth
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 10 run loot give @s loot evercraft:bosses/exclusive/void_sovereign
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 11 run loot give @s loot evercraft:bosses/exclusive/ender_architect

# Drop artifact at feet (inv full)
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/hollow_king
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 2 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/verdant_warden
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 3 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/stormforged
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 4 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/tidecaller
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 5 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/earthshaker
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 6 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/nightmare
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 7 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/infernal_titan
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 8 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/soul_warden
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 9 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/crimson_behemoth
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 10 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/void_sovereign
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 11 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/ender_architect

# Warn if dropped
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your boss artifact was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
