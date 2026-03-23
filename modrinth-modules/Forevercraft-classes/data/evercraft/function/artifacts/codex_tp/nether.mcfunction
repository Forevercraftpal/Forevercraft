# Codex of Everything — Teleport to Nether (0, 80, 0)
# Requires player to have the Codex in inventory

# Verify player has codex
execute unless items entity @s inventory.* *[custom_data~{artifact:"codex_of_everything"}] unless items entity @s weapon.mainhand *[custom_data~{artifact:"codex_of_everything"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"codex_of_everything"}] run tellraw @s [{text:"You need the ",color:"red"},{text:"Codex of Everything",color:"light_purple"},{text:" to use this!",color:"red"}]
execute unless items entity @s inventory.* *[custom_data~{artifact:"codex_of_everything"}] unless items entity @s weapon.mainhand *[custom_data~{artifact:"codex_of_everything"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"codex_of_everything"}] run return 0

# Teleport to Nether 0, 80, 0
execute in minecraft:the_nether run tp @s 0 80 0

# Feedback
tellraw @s [{text:"Codex of Everything",color:"light_purple",bold:true},{text:" warped you to ",color:"gray"},{text:"The Nether (0, 80, 0)",color:"red"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.8
particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 50
