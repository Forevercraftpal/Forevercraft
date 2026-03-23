# ============================================================
# Recipe Discovery — Mark current recipe as discovered
# Called after a successful cook in cook_dispatch
# Pre-req: #ck_slot ec.temp = slot that was cooked
#          @s ec.ck_cat = current category
# ============================================================

# Check if already discovered
scoreboard players operation #ck_slot_num ec.temp = #ck_slot ec.temp
function evercraft:cooking/discovery/check_slot
execute if score #ck_disc ec.temp matches 1 run return 0

# Calculate bit value for this slot (2^slot)
scoreboard players set #disc_bit ec.temp 1
execute if score #ck_slot ec.temp matches 1 run scoreboard players set #disc_bit ec.temp 2
execute if score #ck_slot ec.temp matches 2 run scoreboard players set #disc_bit ec.temp 4
execute if score #ck_slot ec.temp matches 3 run scoreboard players set #disc_bit ec.temp 8
execute if score #ck_slot ec.temp matches 4 run scoreboard players set #disc_bit ec.temp 16
execute if score #ck_slot ec.temp matches 5 run scoreboard players set #disc_bit ec.temp 32

# Add bit to the category discovery score
execute if score @s ec.ck_cat matches 0 run scoreboard players operation @s ck.disc0 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 1 run scoreboard players operation @s ck.disc1 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 2 run scoreboard players operation @s ck.disc2 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 3 run scoreboard players operation @s ck.disc3 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 4 run scoreboard players operation @s ck.disc4 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 5 run scoreboard players operation @s ck.disc5 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 6 run scoreboard players operation @s ck.disc6 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 7 run scoreboard players operation @s ck.disc7 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 8 run scoreboard players operation @s ck.disc8 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 9 run scoreboard players operation @s ck.disc9 += #disc_bit ec.temp
execute if score @s ec.ck_cat matches 10 run scoreboard players operation @s ck.disc10 += #disc_bit ec.temp

# Discovery announcement
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"New recipe discovered!",color:"light_purple"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2.0
