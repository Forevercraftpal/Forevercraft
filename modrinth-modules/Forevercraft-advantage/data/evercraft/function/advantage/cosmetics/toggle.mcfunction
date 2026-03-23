# Toggle cosmetic tier on/off
# #cosm_val adv.temp = requested tier (1-5)

# Check if tier is unlocked via bitfield
# Tier 1 = bit 0 (val 1), Tier 2 = bit 1 (val 2), Tier 3 = bit 2 (val 4), etc.
scoreboard players operation #bit_check adv.temp = @s adv.cosm_unlock

execute if score #cosm_val adv.temp matches 1 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp
execute if score #cosm_val adv.temp matches 2 run scoreboard players operation #bit_check adv.temp /= #2 adv.temp
execute if score #cosm_val adv.temp matches 2 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp
execute if score #cosm_val adv.temp matches 3 run scoreboard players operation #bit_check adv.temp /= #4 adv.temp
execute if score #cosm_val adv.temp matches 3 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp
execute if score #cosm_val adv.temp matches 4 run scoreboard players operation #bit_check adv.temp /= #8 adv.temp
execute if score #cosm_val adv.temp matches 4 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp
execute if score #cosm_val adv.temp matches 5 run scoreboard players operation #bit_check adv.temp /= #16 adv.temp
execute if score #cosm_val adv.temp matches 5 run scoreboard players operation #bit_check adv.temp %= #2 adv.temp

# Not unlocked
execute if score #bit_check adv.temp matches 0 run return run tellraw @s [{text:"\u2726 ",color:"gold"},{text:"You haven't unlocked that cosmetic tier yet!",color:"red"}]

# Clear previous effects
effect clear @s minecraft:glowing
function evercraft:advantage/cosmetics/leave_teams

# Toggle OFF if clicking the already-active tier (flag-based to avoid false deactivation)
scoreboard players set #cosm_did adv.temp 0
execute if score @s adv.cosm_active = #cosm_val adv.temp run scoreboard players set #cosm_did adv.temp 1
execute if score @s adv.cosm_active = #cosm_val adv.temp run scoreboard players set @s adv.cosm_active 0
execute if score #cosm_did adv.temp matches 1 run return run tellraw @s [{text:"\u2726 ",color:"gold"},{text:"Cosmetic deactivated.",color:"gray"}]

# Clear non-cosmetic titles when activating tier 2 (title tag) or 4 (glow outline)
# These tiers use teams, so they must be mutually exclusive with other title systems
execute if score #cosm_val adv.temp matches 2 run function evercraft:titles/clear_all
execute if score #cosm_val adv.temp matches 4 run function evercraft:titles/clear_all

# Activate the new tier
scoreboard players operation @s adv.cosm_active = #cosm_val adv.temp

# Feedback
execute if score @s adv.cosm_active matches 1 run tellraw @s [{text:"\u2726 ",color:"gold"},{text:"Particle Aura ",color:"aqua"},{text:"activated!",color:"green"}]
execute if score @s adv.cosm_active matches 2 run tellraw @s [{text:"\u2726 ",color:"gold"},{text:"Title Tag ",color:"aqua"},{text:"activated!",color:"green"}]
execute if score @s adv.cosm_active matches 3 run tellraw @s [{text:"\u2726 ",color:"gold"},{text:"Effect Trail ",color:"aqua"},{text:"activated!",color:"green"}]
execute if score @s adv.cosm_active matches 4 run tellraw @s [{text:"\u2726 ",color:"gold"},{text:"Glowing Outline ",color:"aqua"},{text:"activated!",color:"green"}]
execute if score @s adv.cosm_active matches 5 run tellraw @s [{text:"\u2726 ",color:"gold"},{text:"Crown Particles ",color:"aqua"},{text:"activated!",color:"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.5
