# Artifact Collection — Random Browse
# Picks a random tier + category and navigates there
# Run as the player, at player, facing anchor

# Pick random tier (1-6)
execute store result score @s adv.gui_art_tier run random value 1..6

# Pick random category (1-3: Weapons, Armor, Accessories)
# Tools (4) only exists for tiers 1-4, so use 1-3 for safety
execute store result score #rand_cat ec.temp run random value 1..3

# Navigate: enter_tier kills tier buttons, spawns categories
execute if score @s adv.gui_art_tier matches 1 at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_tier {tier:1}
execute if score @s adv.gui_art_tier matches 2 at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_tier {tier:2}
execute if score @s adv.gui_art_tier matches 3 at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_tier {tier:3}
execute if score @s adv.gui_art_tier matches 4 at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_tier {tier:4}
execute if score @s adv.gui_art_tier matches 5 at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_tier {tier:5}
execute if score @s adv.gui_art_tier matches 6 at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_tier {tier:6}

# Navigate: enter_category kills categories, spawns item list
execute if score #rand_cat ec.temp matches 1 at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_category {category:1}
execute if score #rand_cat ec.temp matches 2 at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_category {category:2}
execute if score #rand_cat ec.temp matches 3 at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_category {category:3}

# Fun message
tellraw @s [{text:"[Codex] ",color:"dark_purple"},{text:"Browsing a random collection...",color:"light_purple",italic:true}]
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.2
