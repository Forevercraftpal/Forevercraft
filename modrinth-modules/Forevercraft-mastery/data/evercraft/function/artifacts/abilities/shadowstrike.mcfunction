# Shadowstrike — Shadow Walker Boots Enhancement (Exquisite)
# First attack from stealth (invisibility from shadow_walk) deals +4 bonus damage
advancement revoke @s only evercraft:artifacts/abilities/shadowstrike_trigger

# Only trigger if player has invisibility (from shadow_walk sneaking)
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run return 0

# Shadowstrike: +4 bonus damage to nearest hurt target
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 4 minecraft:mob_attack

# Visual/audio feedback
title @s actionbar {text:"Shadowstrike!",color:"#4B0082",bold:true}
execute at @s run particle witch ~ ~1 ~ 0.5 0.5 0.5 0.1 25
execute at @s run particle smoke ~ ~0.5 ~ 0.5 0.3 0.5 0.05 15
playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 0.9 0.5
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.3 1.8

# Clear invisibility — stealth is broken
effect clear @s invisibility

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
