# ============================================================
# Recipe Discovery — Check if slot is discovered
# Pre-req: #ck_slot_num ec.temp = slot number (0-5)
#          @s ec.ck_cat = current category
# Result:  #ck_disc ec.temp = 1 if discovered, 0 if not
# ============================================================

# Load discovery bitfield for current category
execute if score @s ec.ck_cat matches 0 run scoreboard players operation #ck_disc ec.temp = @s ck.disc0
execute if score @s ec.ck_cat matches 1 run scoreboard players operation #ck_disc ec.temp = @s ck.disc1
execute if score @s ec.ck_cat matches 2 run scoreboard players operation #ck_disc ec.temp = @s ck.disc2
execute if score @s ec.ck_cat matches 3 run scoreboard players operation #ck_disc ec.temp = @s ck.disc3
execute if score @s ec.ck_cat matches 4 run scoreboard players operation #ck_disc ec.temp = @s ck.disc4
execute if score @s ec.ck_cat matches 5 run scoreboard players operation #ck_disc ec.temp = @s ck.disc5
execute if score @s ec.ck_cat matches 6 run scoreboard players operation #ck_disc ec.temp = @s ck.disc6
execute if score @s ec.ck_cat matches 7 run scoreboard players operation #ck_disc ec.temp = @s ck.disc7
execute if score @s ec.ck_cat matches 8 run scoreboard players operation #ck_disc ec.temp = @s ck.disc8
execute if score @s ec.ck_cat matches 9 run scoreboard players operation #ck_disc ec.temp = @s ck.disc9
execute if score @s ec.ck_cat matches 10 run scoreboard players operation #ck_disc ec.temp = @s ck.disc10

# Divide by 2^slot to shift target bit to position 0
# Slot 0: no division needed (bit is already at position 0)
execute if score #ck_slot_num ec.temp matches 1 run scoreboard players operation #ck_disc ec.temp /= #2 adv.temp
execute if score #ck_slot_num ec.temp matches 2 run scoreboard players operation #ck_disc ec.temp /= #4 adv.temp
execute if score #ck_slot_num ec.temp matches 3 run scoreboard players operation #ck_disc ec.temp /= #8 adv.temp
execute if score #ck_slot_num ec.temp matches 4 run scoreboard players operation #ck_disc ec.temp /= #16 adv.temp
execute if score #ck_slot_num ec.temp matches 5 run scoreboard players operation #ck_disc ec.temp /= #32 adv.temp

# Mod 2 to extract the single bit
scoreboard players operation #ck_disc ec.temp %= #2 adv.temp
