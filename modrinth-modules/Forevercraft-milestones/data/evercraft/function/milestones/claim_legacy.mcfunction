# Milestone Claim — Eternal Legacy (milestone 34)
# Awards 3x Mythical Crate
# Run as: player, at player

# Guard: player must still be in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Guard: milestone must be complete
execute unless score #rm_done_34 ec.var matches 1 run return 0

# Guard: player must not have already claimed
execute if entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run return 0

# Grant claim advancement
advancement grant @s only evercraft:milestones/claimed/ms_34

# Give 3x mythical crates
function evercraft:util/give_quest_crate {tier:"mythical"}
function evercraft:util/give_quest_crate {tier:"mythical"}
function evercraft:util/give_quest_crate {tier:"mythical"}

# Extra celebration
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 0.6
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 0.8
particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 30
tellraw @s [{text:"[!] ",color:"gold"},{text:"You claimed ",color:"green"},{text:"3x Mythical Crate",color:"light_purple",bold:true},{text:" from Eternal Legacy!",color:"green"}]

# Reset cooldown to prevent held-right-click from rapid-firing
scoreboard players set @s adv.gui_cd 3

# Refresh current page display
execute if score @s adv.gui_page matches 14 run function evercraft:codex/hub/journal/refresh_ms_mastery
