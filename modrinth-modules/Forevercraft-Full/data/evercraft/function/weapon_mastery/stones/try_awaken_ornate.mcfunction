# Awakening Stone — Ornate tier

advancement revoke @s only evercraft:weapon_mastery/stones/consume_ornate

# Priority 1: Check mainhand
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"ornate"}] unless items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return run function evercraft:weapon_mastery/stones/awaken
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"ornate",awakened:1b}] run return run function evercraft:weapon_mastery/stones/fail_already_awakened {tier:"ornate"}

# Priority 2: Check offhand (for functional weapons: rods, bows, shields, tridents)
execute if items entity @s weapon.offhand *[custom_data~{is_artifact:true,tier:"ornate"}] unless items entity @s weapon.offhand *[custom_data~{awakened:1b}] run return run function evercraft:weapon_mastery/stones/awaken_offhand
execute if items entity @s weapon.offhand *[custom_data~{is_artifact:true,tier:"ornate",awakened:1b}] run return run function evercraft:weapon_mastery/stones/fail_already_awakened {tier:"ornate"}

# Priority 3: Check armor slots
execute if items entity @s armor.head *[custom_data~{is_artifact:true,tier:"ornate"}] unless items entity @s armor.head *[custom_data~{awakened:1b}] run return run function evercraft:armor_mastery/awaken {slot:"head"}
execute if items entity @s armor.chest *[custom_data~{is_artifact:true,tier:"ornate"}] unless items entity @s armor.chest *[custom_data~{awakened:1b}] run return run function evercraft:armor_mastery/awaken {slot:"chest"}
execute if items entity @s armor.legs *[custom_data~{is_artifact:true,tier:"ornate"}] unless items entity @s armor.legs *[custom_data~{awakened:1b}] run return run function evercraft:armor_mastery/awaken {slot:"legs"}
execute if items entity @s armor.feet *[custom_data~{is_artifact:true,tier:"ornate"}] unless items entity @s armor.feet *[custom_data~{awakened:1b}] run return run function evercraft:armor_mastery/awaken {slot:"feet"}

function evercraft:weapon_mastery/stones/fail_wrong_weapon {tier:"ornate"}
