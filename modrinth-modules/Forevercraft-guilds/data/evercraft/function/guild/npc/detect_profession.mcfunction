# Guild NPC — Detect profession from villager tags
# @s = the profession villager
# Writes profession string to storage evercraft:guild_npc temp.profession

data modify storage evercraft:guild_npc temp.profession set value "unknown"
execute if entity @s[tag=more_professions_miner] run data modify storage evercraft:guild_npc temp.profession set value "miner"
execute if entity @s[tag=more_professions_beekeeper] run data modify storage evercraft:guild_npc temp.profession set value "beekeeper"
execute if entity @s[tag=more_professions_hunter] run data modify storage evercraft:guild_npc temp.profession set value "hunter"
execute if entity @s[tag=more_professions_zookeeper] run data modify storage evercraft:guild_npc temp.profession set value "zookeeper"
execute if entity @s[tag=more_professions_explorer] run data modify storage evercraft:guild_npc temp.profession set value "explorer"
execute if entity @s[tag=more_professions_circut_board] run data modify storage evercraft:guild_npc temp.profession set value "circut_board"
execute if entity @s[tag=more_professions_bartender] run data modify storage evercraft:guild_npc temp.profession set value "bartender"
execute if entity @s[tag=more_professions_retired_adventurer] run data modify storage evercraft:guild_npc temp.profession set value "retired_adventurer"
execute if entity @s[tag=more_professions_wise_wanderer] run data modify storage evercraft:guild_npc temp.profession set value "wise_wanderer"
execute if entity @s[tag=more_professions_nymph] run data modify storage evercraft:guild_npc temp.profession set value "nymph"
execute if entity @s[tag=more_professions_artificer] run data modify storage evercraft:guild_npc temp.profession set value "artificer"
