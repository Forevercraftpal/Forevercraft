# ============================================================
# Inscription Stones — Summon Marker (macro)
# Called with {rune:"<zone_type>", loot:"<Name>", desc:"<description>"}.
# Run at block center as the player.
# ============================================================

# Summon marker at block center with zone type tag
$summon marker ~ ~0.5 ~ {Tags:["ec.inscr_stone","ec.inscr_$(rune)","ec.inscr_new"]}

# Tag marker with pool type based on player's pool selection
execute if entity @s[tag=ec.inscr_pool_guild] run tag @e[type=marker,tag=ec.inscr_new,distance=..1,limit=1] add ec.inscr_guild_stone
execute if entity @s[tag=ec.inscr_pool_home] run tag @e[type=marker,tag=ec.inscr_new,distance=..1,limit=1] add ec.inscr_home_stone

# Visual mini-block on top of polished_deepslate
summon block_display ~ ~1 ~ {Tags:["ec.inscr_visual"],block_state:{Name:"minecraft:reinforced_deepslate"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,-0.2f],scale:[0.4f,0.3f,0.4f]}}

# Interaction hitbox for shear scraping
summon interaction ~ ~1.15 ~ {Tags:["ec.inscr_interact"],width:0.5f,height:0.4f,response:1b}

# Increment the correct pool counter
execute if entity @s[tag=ec.inscr_pool_guild] run scoreboard players add @s ec.inscr_guild_count 1
execute if entity @s[tag=ec.inscr_pool_home] run scoreboard players add @s ec.inscr_home_count 1
execute if entity @s[tag=ec.inscr_pool_personal] run scoreboard players add @s ec.inscr_count 1

# Feedback (show glyph name + pool info)
$execute if entity @s[tag=ec.inscr_pool_guild] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"$(loot) Glyph",color:"light_purple"},{text:" inscribed! ",color:"gray"},{text:"(Guild ",color:"#55aa55"},{score:{name:"@s",objective:"ec.inscr_guild_count"},color:"white"},{text:"/1)",color:"#55aa55"},{text:"\n  $(desc)",color:"gray",italic:true}]
$execute if entity @s[tag=ec.inscr_pool_home] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"$(loot) Glyph",color:"light_purple"},{text:" inscribed! ",color:"gray"},{text:"(Home ",color:"#55aaff"},{score:{name:"@s",objective:"ec.inscr_home_count"},color:"white"},{text:"/4)",color:"#55aaff"},{text:"\n  $(desc)",color:"gray",italic:true}]
$execute if entity @s[tag=ec.inscr_pool_personal] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"$(loot) Glyph",color:"light_purple"},{text:" inscribed! ",color:"gray"},{text:"(",color:"dark_gray"},{score:{name:"@s",objective:"ec.inscr_count"},color:"white"},{text:"/3)",color:"dark_gray"},{text:"\n  $(desc)",color:"gray",italic:true}]
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.8 1.0
particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 1 20
