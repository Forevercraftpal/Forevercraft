# Reveal Truth — Truthseeker + Judgment Enhancement
# Base: Target glows + gets Weakness II
# Enhancement: Glowing targets take +2 bonus damage
advancement revoke @s only evercraft:artifacts/abilities/reveal_truth_trigger

# Judgment: If target already has Glowing, deal +2 bonus damage
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] if data entity @s {active_effects:[{id:"minecraft:glowing"}]} run damage @s 2 minecraft:mob_attack
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] if data entity @s {active_effects:[{id:"minecraft:glowing"}]} at @s run particle enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0.5 10
execute at @s if entity @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s,active_effects:[{id:"minecraft:glowing"}]}] run title @s actionbar {text:"Judgment!",color:"yellow",bold:true}

# Base: Apply Glowing + Weakness II
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s glowing 10 0 false
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s weakness 5 1 false
execute at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 1 20
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
