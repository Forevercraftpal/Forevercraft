# Housing — Apply snow golem snowball damage
# Run as: snowball (hs.snowball), at snowball position
# A valid target is within 1.5 blocks — deal 3 damage and consume the snowball

damage @e[type=!player,type=!snow_golem,type=!snowball,type=!marker,type=!item,type=!experience_orb,type=!item_display,type=!text_display,type=!interaction,type=!armor_stand,type=!area_effect_cloud,distance=..1.5,limit=1,sort=nearest] 3 minecraft:mob_attack
kill @s
