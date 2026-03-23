# Berserker Detection — Identify tier and apply dual-wield bonuses/penalties
# Run as player who has an axe artifact in mainhand but no ec.bk_active tag

# Verify BOTH hands have axe artifacts (dragon fan counts as axe)
execute unless items entity @s weapon.offhand #minecraft:axes[custom_data~{is_artifact:true}] unless items entity @s weapon.offhand *[custom_data~{artifact:"dragon_fan"}] run return 0

# === ACTIVATE BERSERKER ===
tag @s add ec.bk_active

# === TIER DETECTION (higher of the two axes) ===
scoreboard players set @s ec.bk_tier 1

# Check mainhand tier
execute if items entity @s weapon.mainhand *[custom_data~{tier:"uncommon"}] run scoreboard players set @s ec.bk_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.bk_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.bk_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.bk_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.bk_tier 6

# Check offhand tier — only upgrade if higher
execute if items entity @s weapon.offhand *[custom_data~{tier:"uncommon"}] if score @s ec.bk_tier matches ..1 run scoreboard players set @s ec.bk_tier 2
execute if items entity @s weapon.offhand *[custom_data~{tier:"rare"}] if score @s ec.bk_tier matches ..2 run scoreboard players set @s ec.bk_tier 3
execute if items entity @s weapon.offhand *[custom_data~{tier:"ornate"}] if score @s ec.bk_tier matches ..3 run scoreboard players set @s ec.bk_tier 4
execute if items entity @s weapon.offhand *[custom_data~{tier:"exquisite"}] if score @s ec.bk_tier matches ..4 run scoreboard players set @s ec.bk_tier 5
execute if items entity @s weapon.offhand *[custom_data~{tier:"mythical"}] if score @s ec.bk_tier matches ..5 run scoreboard players set @s ec.bk_tier 6

# === STAT PENALTIES ===
# -7 armor
attribute @s armor modifier add evercraft:berserker_armor -7.0 add_value

# -5 hearts (-10 max HP)
attribute @s max_health modifier add evercraft:berserker_health -10.0 add_value

# Heal to new max if current health exceeds it (prevent visual glitch)
effect give @s instant_health 1 0 true

# === ATTACK SPEED BOOST ===
# Double attack speed (halves recharge time)
attribute @s attack_speed modifier add evercraft:berserker_speed 1.0 add_multiplied_total

# === FEEDBACK ===
playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 0.8 0.6
title @s actionbar [{"text":"Berserker Mode","color":"dark_red","bold":true},{"text":" — dual axes engaged","color":"red","bold":false}]
