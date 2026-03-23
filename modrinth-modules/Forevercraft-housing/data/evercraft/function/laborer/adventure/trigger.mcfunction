# An adventure event has been triggered!
# Pick a random adventure type (1-12)
# Runs as: laborer entity

scoreboard players add @s ec.lb_adventures 1

# Pick adventure type
execute store result score #lb_adv_type ec.lb_temp run random value 1..12

# Master's Wisdom (12) only available at quality 13+, re-roll if not
execute if score #lb_adv_type ec.lb_temp matches 12 unless score @s ec.lb_quality matches 13.. store result score #lb_adv_type ec.lb_temp run random value 1..11

# Dispatch to adventure handler
execute if score #lb_adv_type ec.lb_temp matches 1 run function evercraft:laborer/adventure/cave_discovery
execute if score #lb_adv_type ec.lb_temp matches 2 run function evercraft:laborer/adventure/fishing_hole
execute if score #lb_adv_type ec.lb_temp matches 3 run function evercraft:laborer/adventure/hidden_garden
execute if score #lb_adv_type ec.lb_temp matches 4 run function evercraft:laborer/adventure/rare_specimen
execute if score #lb_adv_type ec.lb_temp matches 5 run function evercraft:laborer/adventure/ancient_cache
execute if score #lb_adv_type ec.lb_temp matches 6 run function evercraft:laborer/adventure/travelers_tale
execute if score #lb_adv_type ec.lb_temp matches 7 run function evercraft:laborer/adventure/monster_encounter
execute if score #lb_adv_type ec.lb_temp matches 8 run function evercraft:laborer/adventure/weather_warning
execute if score #lb_adv_type ec.lb_temp matches 9 run function evercraft:laborer/adventure/lost_recipe
execute if score #lb_adv_type ec.lb_temp matches 10 run function evercraft:laborer/adventure/ore_vein_mapped
execute if score #lb_adv_type ec.lb_temp matches 11 run function evercraft:laborer/adventure/strange_egg
execute if score #lb_adv_type ec.lb_temp matches 12 run function evercraft:laborer/adventure/masters_wisdom
