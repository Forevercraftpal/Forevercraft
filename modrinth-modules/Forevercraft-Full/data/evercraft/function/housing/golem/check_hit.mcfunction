# Housing — Check if a home golem snowball hit a mob
# Run as: snowball with hs.snowball tag, at snowball position
# If a living mob is within 1.5 blocks, deal 3 damage and kill the snowball

execute if entity @e[type=!player,type=!snow_golem,type=!snowball,type=!marker,type=!item,type=!experience_orb,type=!item_display,type=!text_display,type=!interaction,type=!armor_stand,type=!area_effect_cloud,distance=..1.5,limit=1] run function evercraft:housing/golem/apply_hit
