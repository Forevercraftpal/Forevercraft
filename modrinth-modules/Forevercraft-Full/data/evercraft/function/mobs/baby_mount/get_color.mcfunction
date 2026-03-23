execute store result score $get_sheep_color_baby bestiary.technical run random value 1..16
execute store result score $get_sheep_color_parent bestiary.technical run random value 1..16

execute if score $get_sheep_color_baby bestiary.technical matches 1 run data modify storage eden:temp baby_mount.color_baby set value 0b
execute if score $get_sheep_color_baby bestiary.technical matches 2 run data modify storage eden:temp baby_mount.color_baby set value 1b
execute if score $get_sheep_color_baby bestiary.technical matches 3 run data modify storage eden:temp baby_mount.color_baby set value 2b
execute if score $get_sheep_color_baby bestiary.technical matches 4 run data modify storage eden:temp baby_mount.color_baby set value 3b
execute if score $get_sheep_color_baby bestiary.technical matches 5 run data modify storage eden:temp baby_mount.color_baby set value 4b
execute if score $get_sheep_color_baby bestiary.technical matches 6 run data modify storage eden:temp baby_mount.color_baby set value 5b
execute if score $get_sheep_color_baby bestiary.technical matches 7 run data modify storage eden:temp baby_mount.color_baby set value 6b
execute if score $get_sheep_color_baby bestiary.technical matches 8 run data modify storage eden:temp baby_mount.color_baby set value 7b
execute if score $get_sheep_color_baby bestiary.technical matches 9 run data modify storage eden:temp baby_mount.color_baby set value 8b
execute if score $get_sheep_color_baby bestiary.technical matches 10 run data modify storage eden:temp baby_mount.color_baby set value 9b
execute if score $get_sheep_color_baby bestiary.technical matches 11 run data modify storage eden:temp baby_mount.color_baby set value 10b
execute if score $get_sheep_color_baby bestiary.technical matches 12 run data modify storage eden:temp baby_mount.color_baby set value 11b
execute if score $get_sheep_color_baby bestiary.technical matches 13 run data modify storage eden:temp baby_mount.color_baby set value 12b
execute if score $get_sheep_color_baby bestiary.technical matches 14 run data modify storage eden:temp baby_mount.color_baby set value 13b
execute if score $get_sheep_color_baby bestiary.technical matches 15 run data modify storage eden:temp baby_mount.color_baby set value 14b
execute if score $get_sheep_color_baby bestiary.technical matches 16 run data modify storage eden:temp baby_mount.color_baby set value 15b

execute if score $get_sheep_color_parent bestiary.technical matches 1 run data modify storage eden:temp baby_mount.color_parent set value 0b
execute if score $get_sheep_color_parent bestiary.technical matches 2 run data modify storage eden:temp baby_mount.color_parent set value 1b
execute if score $get_sheep_color_parent bestiary.technical matches 3 run data modify storage eden:temp baby_mount.color_parent set value 2b
execute if score $get_sheep_color_parent bestiary.technical matches 4 run data modify storage eden:temp baby_mount.color_parent set value 3b
execute if score $get_sheep_color_parent bestiary.technical matches 5 run data modify storage eden:temp baby_mount.color_parent set value 4b
execute if score $get_sheep_color_parent bestiary.technical matches 6 run data modify storage eden:temp baby_mount.color_parent set value 5b
execute if score $get_sheep_color_parent bestiary.technical matches 7 run data modify storage eden:temp baby_mount.color_parent set value 6b
execute if score $get_sheep_color_parent bestiary.technical matches 8 run data modify storage eden:temp baby_mount.color_parent set value 7b
execute if score $get_sheep_color_parent bestiary.technical matches 9 run data modify storage eden:temp baby_mount.color_parent set value 8b
execute if score $get_sheep_color_parent bestiary.technical matches 10 run data modify storage eden:temp baby_mount.color_parent set value 9b
execute if score $get_sheep_color_parent bestiary.technical matches 11 run data modify storage eden:temp baby_mount.color_parent set value 10b
execute if score $get_sheep_color_parent bestiary.technical matches 12 run data modify storage eden:temp baby_mount.color_parent set value 11b
execute if score $get_sheep_color_parent bestiary.technical matches 13 run data modify storage eden:temp baby_mount.color_parent set value 12b
execute if score $get_sheep_color_parent bestiary.technical matches 14 run data modify storage eden:temp baby_mount.color_parent set value 13b
execute if score $get_sheep_color_parent bestiary.technical matches 15 run data modify storage eden:temp baby_mount.color_parent set value 14b
execute if score $get_sheep_color_parent bestiary.technical matches 16 run data modify storage eden:temp baby_mount.color_parent set value 15b