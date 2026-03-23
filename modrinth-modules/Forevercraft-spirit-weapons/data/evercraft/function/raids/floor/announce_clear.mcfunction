# Spirit Raids — Floor Cleared Announcement (macro)
$tellraw @a[tag=rd.player] [{text:"[Raid] ",color:"dark_red","bold":true},{text:"Floor $(current) Cleared!","color":"gold","bold":true}]
execute as @a[tag=rd.player] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.0
