# Reveal the crate display — scale up the item_display to full size
# Run as the armor_stand animation entity

execute on passengers run data merge entity @s {teleport_duration:0,start_interpolation:0,transformation:{scale:[2.05f,2.1f,2.05f]}}
