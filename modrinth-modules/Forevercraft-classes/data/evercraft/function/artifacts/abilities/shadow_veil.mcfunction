# Shadow Veil — Helm of Shadows + Backstab Enhancement
# Base: Grants brief Invisibility on hit
# Enhancement: If already invisible when hitting, deal +3 bonus damage (Backstab)
advancement revoke @s only evercraft:artifacts/abilities/shadow_veil_trigger

# Backstab: If player has invisibility when striking, bonus damage + break stealth
# After backstab, invis is NOT re-granted — must wait for next hit cycle
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run tag @s add ec.backstabbed
execute if entity @s[tag=ec.backstabbed] at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run damage @s 3 minecraft:mob_attack
execute if entity @s[tag=ec.backstabbed] run title @s actionbar {text:"Backstab!",color:"dark_purple",bold:true}
execute if entity @s[tag=ec.backstabbed] at @s run particle witch ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute if entity @s[tag=ec.backstabbed] run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 0.8 0.6
execute if entity @s[tag=ec.backstabbed] run effect clear @s invisibility

# Base: Grant Invisibility ONLY if backstab didn't fire (stealth continues)
execute unless entity @s[tag=ec.backstabbed] run effect give @s invisibility 3 0 false
execute at @s run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 15
playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 0.5 1

# Cleanup
tag @s remove ec.backstabbed

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
