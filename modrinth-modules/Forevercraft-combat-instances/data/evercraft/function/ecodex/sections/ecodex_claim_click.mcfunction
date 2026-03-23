# Ecodex — Claim Click Bridge (macro)
# Args: {system, id, score, th1, th2, th3, th4, th5, t1, t2, t3, t4, t5, c1, c2, c3, c4, c5}
# Run as: interaction entity that was clicked

data remove entity @s interaction
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
$execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:ecodex/sections/do_claim_stage {system:"$(system)",id:"$(id)",score:"$(score)",th1:$(th1),th2:$(th2),th3:$(th3),th4:$(th4),th5:$(th5),t1:"$(t1)",t2:"$(t2)",t3:"$(t3)",t4:"$(t4)",t5:"$(t5)",c1:$(c1),c2:$(c2),c3:$(c3),c4:$(c4),c5:$(c5)}

# Refresh display after claim
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s if score @s adv.gui_section matches 15 run function evercraft:ecodex/sections/lore_claims/refresh
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s if score @s adv.gui_section matches 16 run function evercraft:ecodex/sections/biome_claims/refresh
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s if score @s adv.gui_section matches 17 run function evercraft:ecodex/sections/personal_claims/refresh
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s if score @s adv.gui_section matches 18 run function evercraft:ecodex/sections/craftforever_claims/refresh

# Cooldown
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run scoreboard players set @s adv.gui_cd 3
