# Mob Crates - Spawn Uncommon Crate
# Creates a barrel with uncommon-tier loot at current position

execute align xyz run setblock ~ ~ ~ minecraft:barrel{lock:{items:"minecraft:air"},CustomName:{text:"Uncommon Mob Crate",color:"blue",italic:false}}
loot insert ~ ~ ~ loot evercraft:mob_crates/uncommon
function evercraft:structures/container/shuffle_barrel

# Grant XP to nearest player
experience add @p 25 points
execute as @p[distance=..10,scores={adv.victorian=1..}] run scoreboard players set #base_crate_xp adv.temp 25
execute as @p[distance=..10,scores={adv.victorian=1..}] run function evercraft:advantage/victorian/apply_bonus

# Effects
playsound minecraft:block.chest.open master @a ~ ~ ~ 1 0.85
particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0.05 15

# Spawn crate animation display (align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"uncommon",system_tag:"mob_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODYwMzk4OSwKICAicHJvZmlsZUlkIiA6ICIxNTUyNmU1OGZhOWE0NjBmODhhNmZhNjk1M2RlNjgzNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQaWVkcml0YTE3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzYzYWE4NmE3NWFlMGQwZGIyNDUxNjIxMTg0MzhjYzRmYWFiYTE0ZDg4MWIwOGY1YjU0ODhkNTJjYTFkMjc5MjMiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}

# Achievement tracking
scoreboard players add @p ach.crates_mob 1
scoreboard players add @p ach.crates_opened 1
