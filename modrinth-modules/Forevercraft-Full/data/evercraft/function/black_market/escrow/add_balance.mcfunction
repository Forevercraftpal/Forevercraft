# Black Market — Add Sale Price to Balance (Macro)
# First load current balance, add sale price, then save
$execute store result score #bm_cur_bal ec.bm_temp run data get storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3).balance
scoreboard players operation #bm_cur_bal ec.bm_temp += #bm_sale_price ec.bm_temp
$execute store result storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3).balance int 1 run scoreboard players get #bm_cur_bal ec.bm_temp
