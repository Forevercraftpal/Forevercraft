# Ecodex — Affinity Claim Click Bridge (macro)
# Args: {cls, t1-t7, c1-c7}
# Run as: interaction entity
data remove entity @s interaction
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
$execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:ecodex/sections/affinity_do_claim {cls:"$(cls)",t1:"$(t1)",t2:"$(t2)",t3:"$(t3)",t4:"$(t4)",t5:"$(t5)",t6:"$(t6)",t7:"$(t7)",c1:$(c1),c2:$(c2),c3:$(c3),c4:$(c4),c5:$(c5),c6:$(c6),c7:$(c7)}

# Refresh display after claim
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s if score @s adv.gui_section matches 14 run function evercraft:ecodex/sections/affinity_claims/refresh

# Cooldown
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run scoreboard players set @s adv.gui_cd 3
