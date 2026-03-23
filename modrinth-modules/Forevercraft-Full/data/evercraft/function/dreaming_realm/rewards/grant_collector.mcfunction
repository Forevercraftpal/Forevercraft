# Dreaming Realm — Grant "Dream Collector" Achievement
# All 5 dream lore pieces collected
# Context: as @s = dreaming player

tag @s add dr.dream_collector
advancement grant @s only evercraft:dreaming_realm/dream_collector

tellraw @s [{"text":""},{"text":"  "},{"text":"All 5 Dream Lore discovered!","color":"#9B59B6","bold":true}]
playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Check for Master Dreamer (need all challenges too)
execute if score @s ec.dream_ch1 matches 1 if score @s ec.dream_ch2 matches 1 if score @s ec.dream_ch3 matches 1 unless entity @s[tag=dr.master_dreamer] run function evercraft:dreaming_realm/rewards/give_cloak
