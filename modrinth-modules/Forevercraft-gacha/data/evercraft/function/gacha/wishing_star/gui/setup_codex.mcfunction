# Wishing Star — Auto-enter artifact section with custom title
# Called from codex/hub/open after shell is spawned
# Runs as @s = player

# Set section to artifacts (4), reset page
scoreboard players set @s adv.gui_section 4
scoreboard players set @s adv.gui_page 1

# Kill hub content via anchor proximity
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.HubContent,distance=..5]

# Spawn back button + artifact tier picker
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/spawn_back_button
execute at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/spawn_tiers

# Override title to Wishing Star
execute as @e[type=text_display,tag=Adv.MenuTitle,distance=..10] if score @s adv.gui_session = #gui_stamp ec.temp run data modify entity @s text set value {text:"\u2726 DREAMY STAR \u2014 Choose an Artifact \u2726",color:"gold",bold:true}

# Stamp new entities
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s as @e[tag=Adv.MenuElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
