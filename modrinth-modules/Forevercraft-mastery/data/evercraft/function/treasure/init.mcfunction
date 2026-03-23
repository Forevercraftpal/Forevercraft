# Player Database
scoreboard objectives add ec.main dummy
scoreboard objectives add ec.uuid.0 dummy
scoreboard objectives add ec.uuid.1 dummy
scoreboard objectives add ec.uuid.2 dummy
scoreboard objectives add ec.uuid.3 dummy
scoreboard objectives add num dummy
scoreboard players set 256 num 256
data modify storage evercraft:treasure/main hex_chars set value ["00","01","02","03","04","05","06","07","08","09","0a","0b","0c","0d","0e","0f","10","11","12","13","14","15","16","17","18","19","1a","1b","1c","1d","1e","1f","20","21","22","23","24","25","26","27","28","29","2a","2b","2c","2d","2e","2f","30","31","32","33","34","35","36","37","38","39","3a","3b","3c","3d","3e","3f","40","41","42","43","44","45","46","47","48","49","4a","4b","4c","4d","4e","4f","50","51","52","53","54","55","56","57","58","59","5a","5b","5c","5d","5e","5f","60","61","62","63","64","65","66","67","68","69","6a","6b","6c","6d","6e","6f","70","71","72","73","74","75","76","77","78","79","7a","7b","7c","7d","7e","7f","80","81","82","83","84","85","86","87","88","89","8a","8b","8c","8d","8e","8f","90","91","92","93","94","95","96","97","98","99","9a","9b","9c","9d","9e","9f","a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","aa","ab","ac","ad","ae","af","b0","b1","b2","b3","b4","b5","b6","b7","b8","b9","ba","bb","bc","bd","be","bf","c0","c1","c2","c3","c4","c5","c6","c7","c8","c9","ca","cb","cc","cd","ce","cf","d0","d1","d2","d3","d4","d5","d6","d7","d8","d9","da","db","dc","dd","de","df","e0","e1","e2","e3","e4","e5","e6","e7","e8","e9","ea","eb","ec","ed","ee","ef","f0","f1","f2","f3","f4","f5","f6","f7","f8","f9","fa","fb","fc","fd","fe","ff"]
scoreboard objectives add ec.log_out minecraft.custom:minecraft.leave_game

# Treasure Particles
scoreboard objectives add ec.plot dummy
scoreboard objectives add ec.self_kill dummy
scoreboard objectives add ec.gust dummy

# Needed for shootfacing
execute in overworld positioned 0 0 0 run forceload add 0 0 0 0 

# Treasure System
scoreboard objectives add ec.break_stone minecraft.mined:minecraft.stone
scoreboard objectives add ec.break_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add ec.break_andesite minecraft.mined:minecraft.andesite
scoreboard objectives add ec.break_granite minecraft.mined:minecraft.granite
scoreboard objectives add ec.break_iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add ec.break_diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add ec.break_coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add ec.break_redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add ec.break_emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add ec.break_lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add ec.break_gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add ec.break_deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add ec.break_copper_ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add ec.break_amethyst minecraft.mined:minecraft.amethyst_block
scoreboard objectives add ec.break_calcite minecraft.mined:minecraft.calcite
scoreboard objectives add ec.break_d_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add ec.break_d_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add ec.break_d_gold_ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add ec.break_d_copper_ore minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add ec.break_d_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add ec.break_d_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add ec.break_d_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add ec.break_d_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add ec.break_tuff minecraft.mined:minecraft.tuff
scoreboard objectives add ec.break_dripstone minecraft.mined:minecraft.dripstone_block
scoreboard objectives add ec.break_sandstone minecraft.mined:minecraft.sandstone
scoreboard objectives add ec.break_terracotta minecraft.mined:minecraft.terracotta
scoreboard objectives add ec.break_brown_terracotta minecraft.mined:minecraft.brown_terracotta
scoreboard objectives add ec.break_light_gray_terracotta minecraft.mined:minecraft.light_gray_terracotta
scoreboard objectives add ec.break_orange_terracotta minecraft.mined:minecraft.orange_terracotta
scoreboard objectives add ec.break_red_terracotta minecraft.mined:minecraft.red_terracotta
scoreboard objectives add ec.break_white_terracotta minecraft.mined:minecraft.white_terracotta
scoreboard objectives add ec.break_yellow_terracotta minecraft.mined:minecraft.yellow_terracotta
scoreboard objectives add ec.break_blackstone minecraft.mined:minecraft.blackstone
scoreboard objectives add ec.break_netherrack minecraft.mined:minecraft.netherrack
scoreboard objectives add ec.break_magma_block minecraft.mined:minecraft.magma_block
scoreboard objectives add ec.break_basalt minecraft.mined:minecraft.basalt
scoreboard objectives add ec.break_smooth_basalt minecraft.mined:minecraft.smooth_basalt
scoreboard objectives add ec.break_nether_gold_ore minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add ec.break_nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add ec.break_end_stone minecraft.mined:minecraft.end_stone

scoreboard objectives add ec.common_count dummy
scoreboard objectives add ec.uncommon_count dummy
scoreboard objectives add ec.rare_count dummy
scoreboard objectives add ec.epic_count dummy
scoreboard objectives add ec.mythical_count dummy
scoreboard objectives add ec.check_time dummy
scoreboard objectives add ec.mine_cd minecraft.custom:minecraft.play_time
scoreboard objectives add ec.var dummy
scoreboard objectives add ec.common_chance dummy
scoreboard objectives add ec.uncommon_chance dummy
scoreboard objectives add ec.rare_chance dummy
scoreboard objectives add ec.epic_chance dummy
scoreboard objectives add ec.exquisite_chance dummy
scoreboard objectives add ec.mythical_chance dummy

# Enchantment Bonus (Fortune/Silk Touch)
scoreboard objectives add ec.enchant_bonus dummy
scoreboard objectives add ec.bonus_common dummy
scoreboard objectives add ec.bonus_rare dummy
scoreboard objectives add ec.bonus_epic dummy
scoreboard objectives add ec.bonus_mythical dummy
scoreboard objectives add ec.orig_common dummy
scoreboard objectives add ec.orig_rare dummy
scoreboard objectives add ec.orig_epic dummy
scoreboard objectives add ec.orig_mythical dummy

# Weapons
scoreboard objectives add ec.piglin_jealousy minecraft.custom:minecraft.play_time
scoreboard objectives add ec.charged_shard minecraft.custom:minecraft.play_time


scoreboard objectives add ec.bow_shot minecraft.used:minecraft.bow
scoreboard objectives add ec.rift_timer dummy
scoreboard objectives add ec.sand_timer dummy
scoreboard objectives add ec.veil_timer dummy
scoreboard objectives add ec.veil dummy
scoreboard objectives add ec.use_trident minecraft.used:minecraft.trident
scoreboard objectives add ec.trident dummy
scoreboard objectives add ec.hold_trident dummy

scoreboard objectives add ec.ray_line dummy
scoreboard objectives add ec.death deathCount

# Runes
scoreboard objectives add ec.use_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add ec.end_rune dummy
scoreboard objectives add ec.sponge_rune dummy
scoreboard objectives add ec.ice_rune dummy
scoreboard objectives add ec.assa_rune dummy
scoreboard objectives add ec.jungle_rune dummy
scoreboard objectives add ec.black_rune dummy
scoreboard objectives add ec.absorb_steal dummy
 
# Misc
scoreboard objectives add ec.play_time minecraft.custom:minecraft.play_time
scoreboard objectives add ec.drill_stone minecraft.mined:minecraft.stone
scoreboard objectives add ec.drill_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add ec.drill_andesite minecraft.mined:minecraft.andesite
scoreboard objectives add ec.drill_granite minecraft.mined:minecraft.granite
scoreboard objectives add ec.compare dummy

# Mechanics
scoreboard objectives add ec.small dummy
scoreboard objectives add ec.hit_cooldown minecraft.custom:minecraft.play_time
scoreboard objectives add ec.small_hit minecraft.custom:minecraft.play_time
scoreboard objectives add ec.big dummy
scoreboard objectives add ec.reach dummy
scoreboard objectives add ec.step_height dummy
scoreboard objectives add ec.light dummy

# Lag Reduction
scoreboard objectives add ec.tick dummy
scoreboard objectives add ec.entity dummy

# Armor
scoreboard objectives add ec.walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add ec.sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ec.jump minecraft.custom:minecraft.jump
scoreboard objectives add ec.food food
scoreboard objectives add ec.health health
# entity_hit
scoreboard objectives add ec.id dummy
scoreboard objectives add ec.bit0 dummy
scoreboard objectives add ec.bit1 dummy
scoreboard objectives add ec.bit2 dummy
scoreboard objectives add ec.bit3 dummy
scoreboard objectives add ec.bit4 dummy
scoreboard objectives add ec.bit5 dummy
scoreboard objectives add ec.bit6 dummy
scoreboard objectives add ec.bit7 dummy
scoreboard objectives add ec.bit8 dummy
scoreboard objectives add ec.bit9 dummy
scoreboard objectives add ec.bit10 dummy
scoreboard objectives add ec.bit11 dummy
scoreboard objectives add ec.bit12 dummy
scoreboard objectives add ec.bit13 dummy
scoreboard objectives add ec.bit14 dummy
scoreboard objectives add ec.bit15 dummy
scoreboard objectives add ec.const dummy
scoreboard players set 2 ec.const 2
scoreboard players set -1 ec.const -1

# Technical
team add ec.hit

# Treasure Container Timers (scoreboard-based replacement for enchantments)
scoreboard objectives add ec.container_timer dummy
scoreboard objectives add ec.container_refill dummy
scoreboard objectives add ec.container_lifetime dummy

scoreboard objectives add ec.luck dummy
scoreboard objectives add ec.luck_bonus dummy
scoreboard objectives add ec.charm_timer dummy
scoreboard objectives add ec.total dummy

# Settings
scoreboard objectives add ec.constant dummy
scoreboard players set #1200 ec.const 1200
scoreboard players set #16 ec.constant 16
scoreboard players set #4 ec.const 4
scoreboard players set #5 ec.const 5
scoreboard players set #2 ec.const 2
scoreboard players set #2 ec.constant 2
scoreboard players set #25 ec.constant 25

# IMPORTANT
execute store result score #load1 ec.var run scoreboard players get #load1 ec.var

scoreboard players set #page ec.constant 0

data modify storage evercraft:treasure/container loot_table set value 'none'

execute store result score #disable_build ec.constant run scoreboard players get #disable_build ec.constant
execute store result score #disable_giga_drill ec.constant run scoreboard players get #disable_giga_drill ec.constant
execute store result score #disable_global ec.constant run scoreboard players get #disable_global ec.constant
execute store result score #disable_common ec.constant run scoreboard players get #disable_common ec.constant
execute store result score #disable_uncommon ec.constant run scoreboard players get #disable_uncommon ec.constant
execute store result score #disable_rare ec.constant run scoreboard players get #disable_rare ec.constant
execute store result score #disable_epic ec.constant run scoreboard players get #disable_epic ec.constant
execute store result score #disable_ornate ec.constant run scoreboard players get #disable_ornate ec.constant
execute store result score #disable_exquisite ec.constant run scoreboard players get #disable_exquisite ec.constant
execute store result score #disable_mythical ec.constant run scoreboard players get #disable_mythical ec.constant
execute store result score #loot_table_rolls ec.constant run scoreboard players get #loot_table_rolls ec.constant
execute store result score #frequency ec.constant run scoreboard players get #frequency ec.constant
execute store result score #chance_common ec.var run scoreboard players get #chance_common ec.var
execute store result score #chance_uncommon ec.var run scoreboard players get #chance_uncommon ec.var
execute store result score #chance_rare ec.var run scoreboard players get #chance_rare ec.var
execute store result score #chance_epic ec.var run scoreboard players get #chance_epic ec.var
execute store result score #chance_exquisite ec.var run scoreboard players get #chance_exquisite ec.var
execute store result score #chance_mythical ec.var run scoreboard players get #chance_mythical ec.var
execute store result score #despawn_speed ec.constant run scoreboard players get #despawn_speed ec.constant
execute store result score #progression ec.constant run scoreboard players get #progression ec.constant
execute store result score #disable_animation ec.constant run scoreboard players get #disable_animation ec.constant
execute store result score #disable_deto_mine ec.constant run scoreboard players get #disable_deto_mine ec.constant
execute store result score #disable_rune ec.constant run scoreboard players get #disable_rune ec.constant
execute store result score #disable_indestructible ec.constant run scoreboard players get #disable_indestructible ec.constant
execute store result score #disable_silk_touch ec.constant run scoreboard players get #disable_silk_touch ec.constant

# Safety net: if chance values are 0 (lost on reload), reapply standard frequency
execute if score #chance_common ec.var matches 0 run function evercraft:treasure/settings/frequency/standard

# Safety net: ensure despawn_speed storage is always initialized
execute unless data storage evercraft:treasure/settings despawn_speed run function evercraft:treasure/settings/despawn/standard

execute if score #load1 ec.var matches 0 unless score #load1 ec.var matches 1.. run function evercraft:treasure/loaded