# Shadow Step — Timer handler (called 1/s from check_all)
# Decrement by 20 ticks (1 second)
scoreboard players remove @s adv.syn_shadow 20

# If expired, remove the sneaking speed modifier
execute if score @s adv.syn_shadow matches ..0 run attribute @s sneaking_speed modifier remove evercraft:adv_syn_shadow
execute if score @s adv.syn_shadow matches ..0 run scoreboard players set @s adv.syn_shadow 0
execute if score @s adv.syn_shadow matches ..0 run title @s actionbar [{text:"✦ Shadow Step faded...",color:"gray",italic:true}]
