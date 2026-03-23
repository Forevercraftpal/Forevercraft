# Initialize the Gacha Info Browser
# Runs as @s = player with ec.InFountain tag

# Close fountain menu (kill menu entities, keep fountain label hidden)
# Use at @s to ensure distance checks run from the player's position
execute at @s as @e[tag=ec.FountainMenu,distance=..20] if score @s adv.gui_session = @p[tag=ec.InFountain] adv.gui_session run kill @s
execute at @s as @e[type=text_display,tag=ec.fountain_label,distance=..20] run data modify entity @s text set value {text:""}
execute at @s as @e[type=interaction,tag=ec.fountain_click,distance=..20] run data modify entity @s height set value 0.0f

# Swap tags
tag @s remove ec.InFountain
tag @s remove ec.InExchange
tag @s add ec.InGachaInfo

# Set page to 1
scoreboard players set @s ec.gacha_page 1

# Initialize inactivity timer
scoreboard players set @s ec.gi_idle 0

# Spawn anchor in front of player (pet menu v2 pattern)
execute at @s rotated ~ 0 positioned ^ ^1.55 ^1.8 run summon marker ~ ~ ~ {Tags:["ec.GachaInfoAnchor","smithed.entity"]}

# Spawn frame and page 1
execute at @s rotated ~ 0 positioned ^ ^1.55 ^1.8 run function evercraft:gacha/fountain/info/spawn_frame
execute at @s rotated ~ 0 positioned ^ ^1.55 ^1.8 run function evercraft:gacha/fountain/info/page1

playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 1.2
