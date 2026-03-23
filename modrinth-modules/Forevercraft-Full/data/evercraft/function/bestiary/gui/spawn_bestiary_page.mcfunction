# Bestiary GUI — Spawn Bestiary Page (Pages 2-6)
# Run as the player, facing anchor
# Page 2 = mobs 0-14, Page 3 = mobs 15-29, Page 4 = mobs 30-44, Page 5 = mobs 45-52, Page 6 = world bosses
# 2-column layout: 8 left, 7 right (or fewer on last page)
# 52 mobs alphabetical (illusioner removed, bit 21 reserved):
#   bee, blaze, bogged, breeze, camel_husk, cave_spider, creaking, creeper,
#   dolphin, drowned, elder_guardian, enderman, endermite, ender_dragon, evoker,
#   fox, ghast, goat, guardian, hoglin, husk, iron_golem, llama, magma_cube,
#   panda, parched, phantom, piglin, piglin_brute, pillager, polar_bear, ravager, shulker,
#   silverfish, skeleton, slime, spider, stray, trader_llama, vex, vindicator, warden,
#   witch, wither, wither_skeleton, wolf, zoglin, zombie, zombie_horse, zombie_nautilus,
#   zombie_villager, zombified_piglin

# Route to page-specific spawn function
execute if score @s adv.gui_page matches 2 run function evercraft:bestiary/gui/pages/page2
execute if score @s adv.gui_page matches 3 run function evercraft:bestiary/gui/pages/page3
execute if score @s adv.gui_page matches 4 run function evercraft:bestiary/gui/pages/page4
execute if score @s adv.gui_page matches 5 run function evercraft:bestiary/gui/pages/page5
execute if score @s adv.gui_page matches 6 run function evercraft:bestiary/gui/pages/page6
