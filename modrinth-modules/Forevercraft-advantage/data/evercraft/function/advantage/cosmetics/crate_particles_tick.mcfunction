# Crate Cosmetic Particles — dispatch active particle slots 1 and 2
# Called per-player (already as @a at @s) when adv.cc_part1 >= 1

# === Slot 1 ===
execute if score @s adv.cc_part1 matches 1 run function evercraft:advantage/cosmetics/crate_particle/frostwalker
execute if score @s adv.cc_part1 matches 2 run function evercraft:advantage/cosmetics/crate_particle/blazeborn
execute if score @s adv.cc_part1 matches 3 run function evercraft:advantage/cosmetics/crate_particle/soulstepper
execute if score @s adv.cc_part1 matches 4 run function evercraft:advantage/cosmetics/crate_particle/mudtreader
execute if score @s adv.cc_part1 matches 5 run function evercraft:advantage/cosmetics/crate_particle/bloomstep
execute if score @s adv.cc_part1 matches 6 run function evercraft:advantage/cosmetics/crate_particle/blossom
execute if score @s adv.cc_part1 matches 7 run function evercraft:advantage/cosmetics/crate_particle/super_hot
execute if score @s adv.cc_part1 matches 8 run function evercraft:advantage/cosmetics/crate_particle/stardust
execute if score @s adv.cc_part1 matches 9 run function evercraft:advantage/cosmetics/crate_particle/cauldron
execute if score @s adv.cc_part1 matches 10 run function evercraft:advantage/cosmetics/crate_particle/heartbeat
execute if score @s adv.cc_part1 matches 11 run function evercraft:advantage/cosmetics/crate_particle/halo
execute if score @s adv.cc_part1 matches 12 run function evercraft:advantage/cosmetics/crate_particle/storm_crown
execute if score @s adv.cc_part1 matches 13 run function evercraft:advantage/cosmetics/crate_particle/dripping_honey
execute if score @s adv.cc_part1 matches 14 run function evercraft:advantage/cosmetics/crate_particle/inkcloud
execute if score @s adv.cc_part1 matches 15 run function evercraft:advantage/cosmetics/crate_particle/fireflies
execute if score @s adv.cc_part1 matches 16 run function evercraft:advantage/cosmetics/crate_particle/spore_cloud
execute if score @s adv.cc_part1 matches 17 run function evercraft:advantage/cosmetics/crate_particle/void_whispers
execute if score @s adv.cc_part1 matches 18 run function evercraft:advantage/cosmetics/crate_particle/ashfall
execute if score @s adv.cc_part1 matches 19 run function evercraft:advantage/cosmetics/crate_particle/ethereal_aura

# === Slot 2 (only if different from slot 1 and set) ===
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 1 run function evercraft:advantage/cosmetics/crate_particle/frostwalker
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 2 run function evercraft:advantage/cosmetics/crate_particle/blazeborn
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 3 run function evercraft:advantage/cosmetics/crate_particle/soulstepper
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 4 run function evercraft:advantage/cosmetics/crate_particle/mudtreader
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 5 run function evercraft:advantage/cosmetics/crate_particle/bloomstep
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 6 run function evercraft:advantage/cosmetics/crate_particle/blossom
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 7 run function evercraft:advantage/cosmetics/crate_particle/super_hot
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 8 run function evercraft:advantage/cosmetics/crate_particle/stardust
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 9 run function evercraft:advantage/cosmetics/crate_particle/cauldron
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 10 run function evercraft:advantage/cosmetics/crate_particle/heartbeat
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 11 run function evercraft:advantage/cosmetics/crate_particle/halo
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 12 run function evercraft:advantage/cosmetics/crate_particle/storm_crown
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 13 run function evercraft:advantage/cosmetics/crate_particle/dripping_honey
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 14 run function evercraft:advantage/cosmetics/crate_particle/inkcloud
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 15 run function evercraft:advantage/cosmetics/crate_particle/fireflies
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 16 run function evercraft:advantage/cosmetics/crate_particle/spore_cloud
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 17 run function evercraft:advantage/cosmetics/crate_particle/void_whispers
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 18 run function evercraft:advantage/cosmetics/crate_particle/ashfall
execute unless score @s adv.cc_part2 matches 0 if score @s adv.cc_part2 matches 19 run function evercraft:advantage/cosmetics/crate_particle/ethereal_aura
