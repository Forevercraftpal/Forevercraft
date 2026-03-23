
schedule function evercraft:mobs/jeb_sheep/change_color/run 10s

execute if data storage eden:settings bestiary.misc{jebcolor:"enabled"} as @e[type=sheep,name=jeb_,tag=!bestiary.settings.exclude] run function evercraft:mobs/jeb_sheep/change_color/init