# Battle Trance — Timer handler (called 1/s from check_all)
# Decrement by 20 ticks (1 second)
scoreboard players remove @s adv.syn_trance 20

# If expired, remove the attack damage modifier
execute if score @s adv.syn_trance matches ..0 run attribute @s attack_damage modifier remove evercraft:adv_syn_trance
execute if score @s adv.syn_trance matches ..0 run scoreboard players set @s adv.syn_trance 0
execute if score @s adv.syn_trance matches ..0 run title @s actionbar [{text:"⚔ Battle Trance faded...",color:"gray",italic:true}]
