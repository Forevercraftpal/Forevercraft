# Spirit Metamorphosis — TRANSFORMATION!
# All 7 requirements met. Upgrade weapon from current tier to SPIRIT tier.

# === DRAMATIC VFX SEQUENCE ===

# Phase 1: Buildup
playsound minecraft:entity.warden.emerge player @a ~ ~ ~ 1.0 0.5
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.0 0.6
particle dust{color:[0.5,0.0,0.8],scale:2.0} ~ ~1 ~ 0.5 2 0.5 0.02 80
particle end_rod ~ ~1 ~ 0.5 2 0.5 0.05 40

# Phase 2: Explosion
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1.0 0.6
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.8 1.2
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 0.6 1.5
particle explosion_emitter ~ ~1 ~ 0 0 0 1 1
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 3
particle dust{color:[0.4,0.0,0.6],scale:3.0} ~ ~1.5 ~ 3 3 3 0.01 100
particle reverse_portal ~ ~1 ~ 1 2 1 0.1 60
particle sonic_boom ~ ~1 ~ 0 0 0 0 1

# Phase 3: Title cards
title @s times 10 80 20
title @s title [{"text":"METAMORPHOSIS","color":"dark_purple","bold":true,"obfuscated":false}]
title @s subtitle [{"text":"Your spirit weapon has transcended","color":"light_purple"}]

# === UPGRADE WEAPON TO SPIRIT TIER ===
# Modify the item's tier in custom_data
data modify storage evercraft:temp meta_weapon set from entity @s SelectedItem
data modify storage evercraft:temp meta_weapon.components."minecraft:custom_data".tier set value "spirit"

# Update the item name color to dark_purple (spirit tier color)
# We can't easily change just the color, so we update via hopper minecart
summon hopper_minecart ~ 320 ~ {Tags:["ec.sp_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] Items[0] set from storage evercraft:temp meta_weapon
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] container.0
kill @e[type=hopper_minecart,tag=ec.sp_temp]

# Update tier score
scoreboard players set @s ec.sp_tier 7

# Broadcast to all players
tellraw @a [{"text":""},{"selector":"@s","color":"gold"},{"text":" has achieved ","color":"light_purple"},{"text":"Spirit Metamorphosis","color":"dark_purple","bold":true},{"text":"!","color":"light_purple"}]
tellraw @s [{"text":"Your weapon has transcended to Spirit tier!","color":"dark_purple","bold":true}]
tellraw @s [{"text":"All abilities have been enhanced to their maximum power.","color":"light_purple"}]

# Metamorphosis reward: 100 coins + Mythical artifact
scoreboard players add @s ec.coins 100
scoreboard players add #rm_coins ec.var 100
tellraw @s [{text:"  ★ ",color:"#E0B0FF"},{text:"+100 Forever Coins",color:"#E0B0FF",bold:true},{text:" — Metamorphosis!",color:"gold"}]
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:500}
loot give @s loot evercraft:artifacts/mythical/main
tellraw @s [{text:"  ★ ",color:"light_purple"},{text:"Mythical Artifact",color:"light_purple",bold:true},{text:" — Spirit Transcendence!",color:"gold"}]

# Play celebration for everyone
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.0
