# Bestiary — Grant Mastery (Macro)
# Args: {pow:"#pow1", field:"lo", mob:"blaze"}
# Run as the player who just completed a bestiary entry

# Set completion bit
$scoreboard players operation @s bs.comp_$(field) += $(pow) bs.temp

# Announce to the player
$tellraw @s ["",{"text":"\u2726 Bestiary Mastery: ","color":"gold","bold":true},{"text":"$(mob)","color":"green"},{"text":" — +20% bonus damage unlocked!","color":"gray"}]

# Announce to other players
$tellraw @a[tag=!ec.bs_self] ["",{"text":"\u2726 ","color":"gold"},{"selector":"@s"},{"text":" mastered ","color":"gray"},{"text":"$(mob)","color":"green"},{"text":" in the Bestiary!","color":"gray"}]

# Coin reward
function evercraft:coins/bestiary_reward

# Sound + particles
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 30
