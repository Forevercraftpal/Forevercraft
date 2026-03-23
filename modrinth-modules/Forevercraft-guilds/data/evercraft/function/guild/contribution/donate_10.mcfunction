# Guild Donation — World Bosses (Activity 10)
# Items: blaze_powder, magma_cream (2pt) | ghast_tear, ender_pearl (10pt) | nether_star, dragon_breath (50pt)

# === Tier 3: 50pt ===

# nether_star (50pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:nether_star 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:nether_star
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 50
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# dragon_breath (50pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:dragon_breath 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:dragon_breath
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players set #guild_mult ec.temp 50
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #guild_mult ec.temp
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 2: 10pt ===

# ghast_tear (10pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:ghast_tear 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:ghast_tear
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #10 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# ender_pearl (10pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:ender_pearl 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:ender_pearl
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #10 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# === Tier 1: 2pt ===

# blaze_powder (2pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:blaze_powder 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:blaze_powder
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #2 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# magma_cream (2pt)
execute store result score #guild_donate_count ec.temp run clear @s minecraft:magma_cream 0
execute if score #guild_donate_count ec.temp matches 1.. run clear @s minecraft:magma_cream
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_count ec.temp *= #2 ec.const
execute if score #guild_donate_count ec.temp matches 1.. run scoreboard players operation #guild_donate_amt ec.temp += #guild_donate_count ec.temp
execute if score #guild_donate_amt ec.temp matches 1.. run function evercraft:guild/contribution/donate_apply
execute if score #guild_donate_amt ec.temp matches 1.. run return 1

# Nothing valid
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Hold boss trophies to donate! (blaze powder, ghast tears, nether stars, etc.)",color:"yellow"}]
