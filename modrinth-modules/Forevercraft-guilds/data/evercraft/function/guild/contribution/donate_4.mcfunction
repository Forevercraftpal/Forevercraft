# Guild Donation — Mob Slaying (Activity 4)
# Items: rotten_flesh, bone, string (1pt) | spider_eye, gunpowder, ender_pearl (3pt) | wither_skeleton_skull, shulker_shell (15pt)

# === Tier 3: 15pt ===

# wither_skeleton_skull (15pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:wither_skeleton_skull 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:wither_skeleton_skull
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 15
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# shulker_shell (15pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:shulker_shell 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:shulker_shell
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 15
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 3pt ===

# spider_eye (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:spider_eye 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:spider_eye
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# gunpowder (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:gunpowder 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:gunpowder
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# ender_pearl (3pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:ender_pearl 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:ender_pearl
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #3 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 1pt ===

# rotten_flesh (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:rotten_flesh 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:rotten_flesh
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# bone (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:bone 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:bone
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# string (1pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:string 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:string
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold mob drops to donate! (bones, gunpowder, wither skulls, etc.)",color:"yellow"}]
