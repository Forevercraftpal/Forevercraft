# Adventure: Monster Encounter (Woodcutter/Prospector) — Permanent +1 quality
execute as @a[distance=..64] run tellraw @s [{"text":"═══ ","color":"gold"},{"text":"Laborer Adventure","color":"yellow","bold":true},{"text":" ═══","color":"gold"}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"\"A beast ambushed me in the wilds!","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"I fought it off — barely. I'm tougher now.\"","color":"white","italic":true}]
execute as @a[distance=..64] run tellraw @s [{"text":"  ","color":"gray"},{"text":"  >> ","color":"gold"},{"text":"Battle-Hardened! Permanent +1 expedition quality","color":"green"}]
# Apply permanent bonus to the laborer
scoreboard players add @s ec.lb_perm_bonus 1
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 0.7 1.2
