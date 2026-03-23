# Marriage — Accept marriage proposal
# @s = accepting player, proposer's UUID3 in ec.fr_target

tag @s remove ec.fr_marry_pending

# Get both UUID3s
execute store result score #fr_accepter_uuid3 ec.temp run data get entity @s UUID[3]
scoreboard players operation #fr_proposer_uuid3 ec.temp = @s ec.fr_target

# Store for macros
execute store result storage evercraft:friends temp.accepter_uuid3 int 1 run scoreboard players get #fr_accepter_uuid3 ec.temp
execute store result storage evercraft:friends temp.proposer_uuid3 int 1 run scoreboard players get #fr_proposer_uuid3 ec.temp

# Set married_to on both storages
function evercraft:friends/marriage/do_marry with storage evercraft:friends temp

# Set married flag on accepter
scoreboard players set @s ec.fr_married 1

# Set title to "spouse" on both friend entries
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_accepter_uuid3 ec.temp
execute store result storage evercraft:friends temp.title_target_uuid3 int 1 run scoreboard players get #fr_proposer_uuid3 ec.temp
data modify storage evercraft:friends temp.new_title set value "spouse"
function evercraft:friends/title/do_set with storage evercraft:friends temp

execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_proposer_uuid3 ec.temp
execute store result storage evercraft:friends temp.title_target_uuid3 int 1 run scoreboard players get #fr_accepter_uuid3 ec.temp
function evercraft:friends/title/do_set with storage evercraft:friends temp

# Find proposer online and update their flag
execute as @a store result score @s ec.temp_uuid3 run data get entity @s UUID[3]
execute as @a if score @s ec.temp_uuid3 = #fr_proposer_uuid3 ec.temp run scoreboard players set @s ec.fr_married 1

# Announce to both
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are now married! ",color:"#FFD700",bold:true},{text:"Play together for +1.0 Dream Rate!",color:"gold"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.0

# Notify proposer
execute as @a if score @s ec.temp_uuid3 = #fr_proposer_uuid3 ec.temp run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your proposal was accepted! ",color:"#FFD700",bold:true},{text:"Play together for +1.0 Dream Rate!",color:"gold"}]
execute as @a if score @s ec.temp_uuid3 = #fr_proposer_uuid3 ec.temp run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.0

scoreboard players set @s ec.fr_target 0
