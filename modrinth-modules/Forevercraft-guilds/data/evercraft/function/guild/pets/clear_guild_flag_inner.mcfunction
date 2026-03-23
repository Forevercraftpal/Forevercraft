# Guild Companion — Inner: clear guild_pet from Pets[] entries
# Run as: companion.marker entity

# Remove guild_pet:1b from any Pets[] entry that has it
# Iterate through indices 0-35 (max companion slots)
execute if data entity @s data.Pets[0].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[0].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[1].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[1].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[2].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[2].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[3].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[3].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[4].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[4].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[5].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[5].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[6].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[6].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[7].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[7].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[8].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[8].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[9].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[9].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[10].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[10].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[11].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[11].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[12].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[12].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[13].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[13].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[14].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[14].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[15].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[15].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[16].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[16].components."minecraft:custom_data".guild_pet
execute if data entity @s data.Pets[17].components."minecraft:custom_data".guild_pet run data remove entity @s data.Pets[17].components."minecraft:custom_data".guild_pet
