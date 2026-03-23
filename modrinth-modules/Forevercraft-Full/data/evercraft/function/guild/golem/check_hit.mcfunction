# Guild — Check if a guild golem snowball hit a mob
# Run as: snowball with gs.snowball tag, at snowball position

execute if entity @e[type=!player,type=!snow_golem,type=!snowball,type=!marker,type=!item,type=!experience_orb,type=!item_display,type=!text_display,type=!interaction,type=!armor_stand,type=!area_effect_cloud,distance=..1.5,limit=1] run function evercraft:guild/golem/apply_hit
