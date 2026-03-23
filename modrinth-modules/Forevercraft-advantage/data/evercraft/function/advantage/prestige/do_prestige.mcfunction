# Prestige — Execute Prestige
# Reads #pres_tree and #pres_current from triggers.mcfunction
# (1) Reset tree to 1, (2) Increment prestige, (3) Apply retained,
# (4) Unlock ability, (5) Update GUI, (6) Award tokens, (7) Feedback, (8) Milestones

# (1) Reset tree level to 1
execute if score #pres_tree adv.temp matches 1 run scoreboard players set @s adv.agility 1
execute if score #pres_tree adv.temp matches 2 run scoreboard players set @s adv.dexterity 1
execute if score #pres_tree adv.temp matches 3 run scoreboard players set @s adv.evasion 1
execute if score #pres_tree adv.temp matches 4 run scoreboard players set @s adv.stealth 1
execute if score #pres_tree adv.temp matches 5 run scoreboard players set @s adv.vitality 1
execute if score #pres_tree adv.temp matches 6 run scoreboard players set @s adv.taskmaster 1
execute if score #pres_tree adv.temp matches 7 run scoreboard players set @s adv.beastmaster 1
execute if score #pres_tree adv.temp matches 8 run scoreboard players set @s adv.victorian 1
execute if score #pres_tree adv.temp matches 9 run scoreboard players set @s adv.fishing 1
execute if score #pres_tree adv.temp matches 10 run scoreboard players set @s adv.mining 1
execute if score #pres_tree adv.temp matches 11 run scoreboard players set @s adv.gathering 1
execute if score #pres_tree adv.temp matches 12 run scoreboard players set @s adv.blacksmith 1
execute if score #pres_tree adv.temp matches 13 run scoreboard players set @s adv.explorer 1
execute if score #pres_tree adv.temp matches 14 run scoreboard players set @s adv.culinary 1

# (2) Increment prestige level
execute if score #pres_tree adv.temp matches 1 run scoreboard players add @s adv.pres_agil 1
execute if score #pres_tree adv.temp matches 2 run scoreboard players add @s adv.pres_dext 1
execute if score #pres_tree adv.temp matches 3 run scoreboard players add @s adv.pres_evas 1
execute if score #pres_tree adv.temp matches 4 run scoreboard players add @s adv.pres_stea 1
execute if score #pres_tree adv.temp matches 5 run scoreboard players add @s adv.pres_vita 1
execute if score #pres_tree adv.temp matches 6 run scoreboard players add @s adv.pres_task 1
execute if score #pres_tree adv.temp matches 7 run scoreboard players add @s adv.pres_beas 1
execute if score #pres_tree adv.temp matches 8 run scoreboard players add @s adv.pres_vict 1
execute if score #pres_tree adv.temp matches 9 run scoreboard players add @s adv.pres_fish 1
execute if score #pres_tree adv.temp matches 10 run scoreboard players add @s adv.pres_mine 1
execute if score #pres_tree adv.temp matches 11 run scoreboard players add @s adv.pres_gath 1
execute if score #pres_tree adv.temp matches 12 run scoreboard players add @s adv.pres_blac 1
execute if score #pres_tree adv.temp matches 13 run scoreboard players add @s adv.pres_expl 1
execute if score #pres_tree adv.temp matches 14 run scoreboard players add @s adv.pres_culi 1
scoreboard players add @s adv.pres_total 1

# Spirit progression — track all-prestige flag (14 = all trees prestiged at least once)
execute if score @s adv.pres_total matches 14.. run scoreboard players set @s ec.sp_all_prestige 1

# Re-read new prestige level into #pres_current (now 1/2/3)
execute if score #pres_tree adv.temp matches 1 run scoreboard players operation #pres_current adv.temp = @s adv.pres_agil
execute if score #pres_tree adv.temp matches 2 run scoreboard players operation #pres_current adv.temp = @s adv.pres_dext
execute if score #pres_tree adv.temp matches 3 run scoreboard players operation #pres_current adv.temp = @s adv.pres_evas
execute if score #pres_tree adv.temp matches 4 run scoreboard players operation #pres_current adv.temp = @s adv.pres_stea
execute if score #pres_tree adv.temp matches 5 run scoreboard players operation #pres_current adv.temp = @s adv.pres_vita
execute if score #pres_tree adv.temp matches 6 run scoreboard players operation #pres_current adv.temp = @s adv.pres_task
execute if score #pres_tree adv.temp matches 7 run scoreboard players operation #pres_current adv.temp = @s adv.pres_beas
execute if score #pres_tree adv.temp matches 8 run scoreboard players operation #pres_current adv.temp = @s adv.pres_vict
execute if score #pres_tree adv.temp matches 9 run scoreboard players operation #pres_current adv.temp = @s adv.pres_fish
execute if score #pres_tree adv.temp matches 10 run scoreboard players operation #pres_current adv.temp = @s adv.pres_mine
execute if score #pres_tree adv.temp matches 11 run scoreboard players operation #pres_current adv.temp = @s adv.pres_gath
execute if score #pres_tree adv.temp matches 12 run scoreboard players operation #pres_current adv.temp = @s adv.pres_blac
execute if score #pres_tree adv.temp matches 13 run scoreboard players operation #pres_current adv.temp = @s adv.pres_expl
execute if score #pres_tree adv.temp matches 14 run scoreboard players operation #pres_current adv.temp = @s adv.pres_culi

# (3) Apply retained bonuses (attribute modifiers at prestige %)
function evercraft:advantage/prestige/apply_retained

# (4) Reapply base effects at level 1
function evercraft:advantage/effects/reapply_all

# (5) Unlock prestige ability
function evercraft:advantage/prestige/unlock_ability

# (6) Award 100 tokens
data modify storage evercraft:tokens amount set value 100
function evercraft:advantage/tokens/award with storage evercraft:tokens

# (7) Update GUI if open
function evercraft:advantage/prestige/update_visual

# (8) Feedback
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.5
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100 force
execute if score #pres_current adv.temp matches 1 run tellraw @s [{text:"✦ ",color:"gold"},{text:"PRESTIGE ★ ",color:"dark_purple",bold:true},{text:"Tree reset to Lv.1 with 17% retained bonus. New ability unlocked!",color:"green"}]
execute if score #pres_current adv.temp matches 2 run tellraw @s [{text:"✦ ",color:"gold"},{text:"PRESTIGE ★★ ",color:"light_purple",bold:true},{text:"Tree reset to Lv.1 with 34% retained bonus. New ability unlocked!",color:"green"}]
execute if score #pres_current adv.temp matches 3 run tellraw @s [{text:"✦ ",color:"gold"},{text:"PRESTIGE ★★★ ",color:"gold",bold:true},{text:"Tree reset to Lv.1 with 50% retained bonus. New ability unlocked!",color:"green"}]

# (9) All-prestige milestones
execute if score @s adv.pres_total matches 14 run tellraw @s [{text:"✦ ",color:"gold"},{text:"ALL TREES PRESTIGE ★! ",color:"light_purple",bold:true},{text:"Choose 3 Mythical items from the Nymph!",color:"gold"}]
execute if score @s adv.pres_total matches 28 run tellraw @s [{text:"✦ ",color:"gold"},{text:"ALL TREES PRESTIGE ★★! ",color:"light_purple",bold:true},{text:"Choose 5 Mythical items from the Nymph!",color:"gold"}]
execute if score @s adv.pres_total matches 42 run tellraw @s [{text:"✦ ",color:"gold"},{text:"ALL TREES PRESTIGE ★★★! ",color:"gold",bold:true},{text:"Choose 10 Mythical items from the Nymph!",color:"gold"}]
