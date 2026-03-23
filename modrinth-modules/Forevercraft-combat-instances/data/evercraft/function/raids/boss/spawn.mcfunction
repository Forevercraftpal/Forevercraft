# Spirit Raids — Spawn Boss
# Called after boss vote passes, at the arena center
# Routes to per-boss spawn function based on #rd_boss_id

# Set boss alive flag
scoreboard players set #rd_boss_alive ec.var 1

# Tag all raid players as participants for boss targeting
execute as @a[tag=rd.player] run tag @s add ec.rd_participant

# Route to per-boss spawn function
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 1 run function evercraft:raids/boss/hollow_sovereign/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 2 run function evercraft:raids/boss/void_architect/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 3 run function evercraft:raids/boss/gilded_tyrant/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 4 run function evercraft:raids/boss/arbiter/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 5 run function evercraft:raids/boss/gatekeeper/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 6 run function evercraft:raids/boss/grand_illusionist/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 7 run function evercraft:raids/boss/ashen_lord/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 8 run function evercraft:raids/boss/leviathan/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 9 run function evercraft:raids/boss/eternal_pharaoh/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 10 run function evercraft:raids/boss/venomweaver/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 11 run function evercraft:raids/boss/deepcrawler/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 12 run function evercraft:raids/boss/mossheart_warden/spawn
execute at @e[type=marker,tag=rd.center,limit=1] if score #rd_boss_id ec.var matches 13 run function evercraft:raids/boss/crimson_bulwark/spawn

# Announce boss spawn
title @a[tag=rd.player] times 10 60 20
title @a[tag=rd.player] title {text:"BOSS FIGHT",color:"dark_red",bold:true}
execute as @a[tag=rd.player] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0.5
execute as @a[tag=rd.player] at @s run playsound minecraft:entity.warden.roar master @s ~ ~ ~ 0.8 0.8
