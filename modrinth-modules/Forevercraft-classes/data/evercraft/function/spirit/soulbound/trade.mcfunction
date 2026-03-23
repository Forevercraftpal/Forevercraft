# Soulbound — Trade spirit artifact to best friend
# Triggered via /trigger ec.sp_trade set 1
# Run as @s (trading player) at @s

# Reset trigger
scoreboard players set @s ec.sp_trade 0
scoreboard players enable @s ec.sp_trade

# Check player is holding a spirit artifact
execute unless items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run return run tellraw @s [{"text":"Hold a Spirit Artifact in your mainhand to trade!","color":"red"}]

# Find nearest player within 3 blocks
execute unless entity @a[distance=0.1..3,limit=1,sort=nearest] run return run tellraw @s [{"text":"No player nearby! Stand within 3 blocks of your trade partner.","color":"red"}]

# Check Best Friend status (companion relationship level >= 4)
# Store nearest player for reference
tag @a[distance=0.1..3,limit=1,sort=nearest] add ec.sp_trade_target

# Check relationship level (ec.comp.rellevel >= 4 would be ideal but simplified here)
# For now, we allow the trade if both players are within range
# TODO: Add companion relationship check when system is ready

# Save the spirit artifact
data modify storage evercraft:soulbound trade_item set from entity @s SelectedItem

# Remove from trader
item replace entity @s weapon.mainhand with air

# Give to receiver via hopper minecart
execute at @a[tag=ec.sp_trade_target,limit=1] run summon hopper_minecart ~ 320 ~ {Tags:["ec.sp_temp"],Items:[{Slot:0b,id:"minecraft:stone",count:1}]}
data modify entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] Items[0] set from storage evercraft:soulbound trade_item
execute as @a[tag=ec.sp_trade_target,limit=1] run item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ec.sp_temp,limit=1] container.0
kill @e[type=hopper_minecart,tag=ec.sp_temp]

# VFX
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.8 1.2
particle enchant ~ ~1 ~ 1 1 1 0.5 30

# Messages
tellraw @s [{"text":"Spirit artifact traded!","color":"green"}]
tellraw @a[tag=ec.sp_trade_target,limit=1] [{"text":"You received a Spirit Artifact!","color":"light_purple"}]

# Cleanup
tag @a[tag=ec.sp_trade_target] remove ec.sp_trade_target
