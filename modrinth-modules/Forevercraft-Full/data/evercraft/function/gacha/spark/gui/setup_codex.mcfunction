# Lucid Claim — Auto-enter selection page with custom title
# Called from codex/hub/open after shell is spawned
# Runs as @s = player

# Set section to 10 (lucid claim), reset page
scoreboard players set @s adv.gui_section 10
scoreboard players set @s adv.gui_page 1

# Kill hub content via anchor proximity
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.HubContent,distance=..5]

# Spawn the 9 artifact selection items
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:gacha/spark/gui/spawn_items

# Override title
execute as @e[type=text_display,tag=Adv.MenuTitle,distance=..10] if score @s adv.gui_session = #gui_stamp ec.temp run data modify entity @s text set value {text:"★ LUCID CLAIM — Choose an Artifact ★",color:"gold",bold:true}

# Stamp new entities
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s as @e[tag=Adv.MenuElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.8 1.2
