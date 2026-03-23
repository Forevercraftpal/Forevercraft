# Adventure: Hidden Garden (Farmer/Forager)
execute as @a[distance=..64] run tellraw @s [{"text":"═══ ","color":"gold"},{"text":"Laborer Adventure","color":"yellow","bold":true},{"text":" ═══","color":"gold"}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"\"I stumbled upon a secret garden,","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"overgrown with exotic plants!\"","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"  >> ","color":"gold"},{"text":"Rare seeds and blossoms found!","color":"green"}]
give @a[tag=ec.lb_owner,limit=1] minecraft:torchflower_seeds 2
give @a[tag=ec.lb_owner,limit=1] minecraft:spore_blossom 1
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 0.7 1.2
