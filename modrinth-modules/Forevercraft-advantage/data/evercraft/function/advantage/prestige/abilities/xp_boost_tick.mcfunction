# Victorian P1: XP Siphon — passive +1 XP point every 16 seconds
# Called from tick/main (1s schedule) for players with adv.pres_vict=1+
# Counter increments each call; grants 1 XP when reaching 16, then resets
scoreboard players add @s adv.pa_vict1_sn 1
execute if score @s adv.pa_vict1_sn matches 16.. run experience add @s 1 points
execute if score @s adv.pa_vict1_sn matches 16.. run scoreboard players set @s adv.pa_vict1_sn 0
