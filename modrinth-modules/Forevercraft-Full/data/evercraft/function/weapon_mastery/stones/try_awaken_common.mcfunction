# Awakening Stone — Common tier
# Fired by consume_item advancement when player eats a common awakening stone

advancement revoke @s only evercraft:weapon_mastery/stones/consume_common

# Priority 1: Check mainhand for matching weapon/tool artifact
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"common"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return run function evercraft:weapon_mastery/stones/awaken
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"common",awakened:1b}] run return run function evercraft:weapon_mastery/stones/fail_already_awakened {tier:"common"}

# Priority 2: Check offhand (for functional weapons: rods, bows, shields, tridents)
execute if items entity @s weapon.offhand *[custom_data~{is_artifact:true,tier:"common"}] unless items entity @s weapon.offhand *[custom_data~{awakened:1b}] run return run function evercraft:weapon_mastery/stones/awaken_offhand
execute if items entity @s weapon.offhand *[custom_data~{is_artifact:true,tier:"common",awakened:1b}] run return run function evercraft:weapon_mastery/stones/fail_already_awakened {tier:"common"}

# Priority 3: Check armor slots (top to bottom)
execute if items entity @s armor.head *[custom_data~{is_artifact:true,tier:"common"}] unless items entity @s armor.head *[custom_data~{awakened:1b}] run return run function evercraft:armor_mastery/awaken {slot:"head"}
execute if items entity @s armor.chest *[custom_data~{is_artifact:true,tier:"common"}] unless items entity @s armor.chest *[custom_data~{awakened:1b}] run return run function evercraft:armor_mastery/awaken {slot:"chest"}
execute if items entity @s armor.legs *[custom_data~{is_artifact:true,tier:"common"}] unless items entity @s armor.legs *[custom_data~{awakened:1b}] run return run function evercraft:armor_mastery/awaken {slot:"legs"}
execute if items entity @s armor.feet *[custom_data~{is_artifact:true,tier:"common"}] unless items entity @s armor.feet *[custom_data~{awakened:1b}] run return run function evercraft:armor_mastery/awaken {slot:"feet"}

# No valid target found
function evercraft:weapon_mastery/stones/fail_wrong_weapon {tier:"common"}
