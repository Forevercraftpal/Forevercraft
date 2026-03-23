# Lore Collect: Set completion! Award rewards (macro)

# Read rarity for reward scaling
execute store result score @s ec.lore_rarity run data get storage evercraft:lore temp.set_meta.rarity

# Increment completed sets counter (total + per-dimension)
scoreboard players add @s ec.lore_sets_done 1
execute if data storage evercraft:lore temp.set_meta{dim:0} run scoreboard players add @s ec.lore_dim0_done 1
execute if data storage evercraft:lore temp.set_meta{dim:1} run scoreboard players add @s ec.lore_dim1_done 1
execute if data storage evercraft:lore temp.set_meta{dim:2} run scoreboard players add @s ec.lore_dim2_done 1
execute if data storage evercraft:lore temp.set_meta{dim:3} run scoreboard players add @s ec.lore_dim3_done 1
function evercraft:milestones/increment/lore_piece

# Celebration effects
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30

# Award rewards: DR modifier + XP + crate
function evercraft:lore/reward/grant_set with storage evercraft:lore temp
