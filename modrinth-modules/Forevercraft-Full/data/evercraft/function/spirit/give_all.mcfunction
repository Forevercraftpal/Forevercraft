# Spirit Artifacts — Spawn all 14 weapons + 7 twins + crystal in a barrel
# Usage: /function evercraft:spirit/give_all

# Place barrel 2 blocks in front (use ^ ^ ^ for facing direction, feet level)
execute at @s anchored feet run setblock ^ ^ ^2 barrel

# === Primary Weapons (14) ===
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/hollow_fangs
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/voidpiercer
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/firebrand
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/zephyr_edge
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/nite
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/whispering_spear
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/ashcrown_mace
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/ellegaard_trident
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/pharaoh_fist
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/lifewoven_branch
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/sabrewing
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/dragonheart_sword
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/bulwark_shield
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/royal_trident

# === Twin Weapons (6) ===
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/twin/aqualoch
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/twin/storm_edge
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/twin/deih
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/twin/ashcrown_shield
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/twin/johan_shield
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/twin/vanguard_shield

# === Dream Storm Crystal ===
execute at @s anchored feet run loot insert ^ ^ ^2 loot evercraft:spirit/dream_storm_crystal

tellraw @s [{"text":"Spawned ","color":"gray"},{"text":"Spirit Arsenal","color":"dark_purple","bold":true},{"text":" barrel with all 21 items!","color":"gray"}]
