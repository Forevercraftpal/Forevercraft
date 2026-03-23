# Mob Crates - Spawn Rare Crate
# Creates a barrel with rare-tier loot at current position

execute align xyz run setblock ~ ~ ~ minecraft:barrel{lock:{items:"minecraft:air"},CustomName:{text:"Rare Mob Crate",color:"aqua",italic:false}}
loot insert ~ ~ ~ loot evercraft:mob_crates/rare
function evercraft:structures/container/shuffle_barrel

# Grant XP to nearest player
experience add @p 50 points
execute as @p[distance=..10,scores={adv.victorian=1..}] run scoreboard players set #base_crate_xp adv.temp 50
execute as @p[distance=..10,scores={adv.victorian=1..}] run function evercraft:advantage/victorian/apply_bonus

# Effects
playsound minecraft:block.chest.open master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 1.2
particle minecraft:enchant ~ ~0.5 ~ 0.4 0.4 0.4 0.5 20

# Spawn crate animation display (align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"rare",system_tag:"mob_crate",plot_start:15,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODYyMDUzMiwKICAicHJvZmlsZUlkIiA6ICI2NGRiNmMwNTliOTk0OTM2YTY0M2QwODEwODE0ZmJkMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJUaGVTaWx2ZXJEcmVhbXMiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc2YmZhOWE0YWEwYTRmMTIwZDQ2NDgyOGZlY2E3OWM5MjYzNjk2MDRhOWU1Nzk2NTlkOTUwZDZiMTk1MzIiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}

# Achievement tracking
scoreboard players add @p ach.crates_mob 1
scoreboard players add @p ach.crates_opened 1
