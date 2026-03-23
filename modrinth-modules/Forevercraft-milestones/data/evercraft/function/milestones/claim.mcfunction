# Milestone Claim — Generic (macro)
# Args: {id:"X", tier:"Y"}
# Run as: player, at player

# Guard: player must still be in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Guard: milestone must be complete
$execute unless score #rm_done_$(id) ec.var matches 1 run return 0

# Guard: player must not have already claimed
$execute if entity @s[advancements={evercraft:milestones/claimed/ms_$(id)=true}] run return 0

# Grant claim advancement
$advancement grant @s only evercraft:milestones/claimed/ms_$(id)

# Give crate
$function evercraft:util/give_quest_crate {tier:"$(tier)"}

# Feedback
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 0.6
particle minecraft:happy_villager ~ ~1.5 ~ 0.3 0.3 0.3 0.02 15
tellraw @s [{text:"[!] ",color:"gold"},{text:"Milestone reward claimed!",color:"green"}]

# Reset cooldown to prevent held-right-click from rapid-firing other claim buttons
scoreboard players set @s adv.gui_cd 3

# Refresh current page display
execute if score @s adv.gui_page matches 9 run function evercraft:codex/hub/journal/refresh_ms_origins
execute if score @s adv.gui_page matches 10 run function evercraft:codex/hub/journal/refresh_ms_social
execute if score @s adv.gui_page matches 11 run function evercraft:codex/hub/journal/refresh_ms_guild
execute if score @s adv.gui_page matches 12 run function evercraft:codex/hub/journal/refresh_ms_adventure
execute if score @s adv.gui_page matches 13 run function evercraft:codex/hub/journal/refresh_ms_combat
execute if score @s adv.gui_page matches 14 run function evercraft:codex/hub/journal/refresh_ms_mastery
