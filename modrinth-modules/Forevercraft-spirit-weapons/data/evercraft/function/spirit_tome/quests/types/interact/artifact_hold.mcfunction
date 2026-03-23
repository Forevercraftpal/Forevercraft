# Old Reliable — hold an artifact for 1 hour of playtime (72000 ticks)
# Increment progress each second if holding an artifact, reset if not
execute if items entity @s weapon.mainhand *[custom_data~{evercraft_artifact:true}] run scoreboard players add @s ec.sq_progress 1
execute unless items entity @s weapon.mainhand *[custom_data~{evercraft_artifact:true}] run scoreboard players set @s ec.sq_progress 0

# 3600 seconds = 1 hour (checked every 1 second)
execute if score @s ec.sq_progress matches 3600.. run function evercraft:spirit_tome/complete
