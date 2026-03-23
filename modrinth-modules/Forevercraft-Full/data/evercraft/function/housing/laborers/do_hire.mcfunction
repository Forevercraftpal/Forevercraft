# ============================================================
# Laborers — Execute hire (macro)
# Run as: player with HS.InLaborers, at player
# Args: type, type_tag, display_name, cost, rank_req, profession, color
# ============================================================

# --- Guard: Check Artisan Rank requirement ---
$execute unless score @s ec.cf_rank matches $(rank_req).. run data modify entity @e[type=text_display,tag=HS.LbStatus,distance=..7,limit=1] text set value {"text":"Artisan Rank too low!","color":"red"}
$execute unless score @s ec.cf_rank matches $(rank_req).. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 1.5
$execute unless score @s ec.cf_rank matches $(rank_req).. run return 0

# --- Guard: Check laborer slot availability ---
execute if score @s ec.lb_count >= @s ec.lb_max run data modify entity @e[type=text_display,tag=HS.LbStatus,distance=..7,limit=1] text set value {"text":"No laborer slots available!","color":"red"}
execute if score @s ec.lb_count >= @s ec.lb_max run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 1.5
execute if score @s ec.lb_count >= @s ec.lb_max run return 0

# --- Guard: Check emerald cost ---
$scoreboard players set #lb_cost ec.temp $(cost)
execute store result score #lb_has_em ec.temp run clear @s emerald 0
execute if score #lb_has_em ec.temp < #lb_cost ec.temp run data modify entity @e[type=text_display,tag=HS.LbStatus,distance=..7,limit=1] text set value {"text":"Not enough emeralds!","color":"red"}
execute if score #lb_has_em ec.temp < #lb_cost ec.temp run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 1.5
execute if score #lb_has_em ec.temp < #lb_cost ec.temp run return 0

# --- Guard: Prospector also needs 1 netherite ingot (cost=48 is unique to prospector) ---
execute if score #lb_cost ec.temp matches 48 store result score #lb_has_neth ec.temp run clear @s netherite_ingot 0
execute if score #lb_cost ec.temp matches 48 if score #lb_has_neth ec.temp matches ..0 run data modify entity @e[type=text_display,tag=HS.LbStatus,distance=..7,limit=1] text set value {"text":"Need 1 Netherite Ingot!","color":"red"}
execute if score #lb_cost ec.temp matches 48 if score #lb_has_neth ec.temp matches ..0 run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 1.5
execute if score #lb_cost ec.temp matches 48 if score #lb_has_neth ec.temp matches ..0 run return 0

# === ALL CHECKS PASSED — HIRE THE LABORER ===

# Deduct emerald cost
$clear @s emerald $(cost)

# Deduct netherite for Prospector
execute if score #lb_cost ec.temp matches 48 run clear @s netherite_ingot 1

# Spawn the laborer villager at the hearthstone marker position
$execute at @e[type=marker,tag=HS.Marker,distance=..8,limit=1] run summon villager ~ ~0.5 ~ {"Tags":["ec.laborer","ec.lb_owned","$(type_tag)"],"CustomName":{"text":"$(display_name)","color":"$(color)"},"CustomNameVisible":1b,"Invulnerable":1b,"PersistenceRequired":1b,"Silent":1b,"CanPickUpLoot":0b,"VillagerData":{"profession":"$(profession)","level":5,"type":"plains"},"Offers":{"Recipes":[]}}

# Initialize the new laborer's scoreboards
$execute as @e[type=villager,tag=ec.laborer,tag=$(type_tag),distance=..64,sort=nearest,limit=1] unless score @s ec.lb_state matches 0.. run function evercraft:housing/laborers/init_laborer

# Increment player's laborer count
scoreboard players add @s ec.lb_count 1

# Success feedback
$data modify entity @e[type=text_display,tag=HS.LbStatus,distance=..7,limit=1] text set value [{"text":"Hired ","color":"green"},{"text":"$(display_name)","color":"$(color)","bold":true},{"text":"!","color":"green"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5

# Refresh the display
execute at @s run function evercraft:housing/laborers/refresh_laborers
