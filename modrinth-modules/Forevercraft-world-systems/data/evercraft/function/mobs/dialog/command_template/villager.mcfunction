$data modify storage eden:settings bestiary.villager_settings merge value {villager_follow:$(villager_follow),validmobs:'$(validmobs)',locator_color:'$(locator_color)',locator_range:$(locator_range),village_heal_distance:$(village_heal_distance),villagecenter_healing:$(villagecenter_healing),villagename_rename:$(villagename_rename),villagename_msg:$(villagename_msg),villagename:$(villagename),talking:$(talking),breeddiversity:$(breeddiversity),gossip:$(gossip),restock:$(restock),customname:$(customname)}

execute if data storage eden:settings bestiary.villager_settings{villager_follow:"enabled"} run data modify storage eden:settings bestiary.villager_settings.villager_follow_initial set value "false"
execute unless data storage eden:settings bestiary.villager_settings{villager_follow:"enabled"} run data modify storage eden:settings bestiary.villager_settings.villager_follow_initial set value "true"

execute if data storage eden:settings bestiary.villager_settings{customname:"enabled"} run data modify storage eden:settings bestiary.villager_settings.customname_initial set value "false"
execute unless data storage eden:settings bestiary.villager_settings{customname:"enabled"} run data modify storage eden:settings bestiary.villager_settings.customname_initial set value "true"

execute if data storage eden:settings bestiary.villager_settings{restock:"enabled"} run data modify storage eden:settings bestiary.villager_settings.restock_initial set value "false"
execute unless data storage eden:settings bestiary.villager_settings{restock:"enabled"} run data modify storage eden:settings bestiary.villager_settings.restock_initial set value "true"

execute if data storage eden:settings bestiary.villager_settings{miniblock:"enabled"} run data modify storage eden:settings bestiary.villager_settings.miniblock_initial set value "false"
execute unless data storage eden:settings bestiary.villager_settings{miniblock:"enabled"} run data modify storage eden:settings bestiary.villager_settings.miniblock_initial set value "true"

execute if data storage eden:settings bestiary.villager_settings{gossip:"enabled"} run data modify storage eden:settings bestiary.villager_settings.gossip_initial set value "false"
execute unless data storage eden:settings bestiary.villager_settings{gossip:"enabled"} run data modify storage eden:settings bestiary.villager_settings.gossip_initial set value "true"

execute if data storage eden:settings bestiary.villager_settings{breeddiversity:"enabled"} run data modify storage eden:settings bestiary.villager_settings.breeddiversity_initial set value "false"
execute unless data storage eden:settings bestiary.villager_settings{breeddiversity:"enabled"} run data modify storage eden:settings bestiary.villager_settings.breeddiversity_initial set value "true"

$data modify storage eden:settings bestiary.villager_settings.companion_initial set value $(pet)
execute store result storage eden:settings bestiary.villager_settings.companion float 0.01 run data get storage eden:settings bestiary.villager_settings.companion_initial

execute if data storage eden:settings bestiary.villager_settings{talking:"disabled"} run data modify storage eden:settings bestiary.villager_settings.talking_chat_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{talking:"disabled"} run data modify storage eden:settings bestiary.villager_settings.talking_actionbar_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{talking:"chat"} run data modify storage eden:settings bestiary.villager_settings.talking_chat_initial set value "true"
execute if data storage eden:settings bestiary.villager_settings{talking:"chat"} run data modify storage eden:settings bestiary.villager_settings.talking_actionbar_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{talking:"actionbar"} run data modify storage eden:settings bestiary.villager_settings.talking_chat_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{talking:"actionbar"} run data modify storage eden:settings bestiary.villager_settings.talking_actionbar_initial set value "true"

execute if data storage eden:settings bestiary.villager_settings{villagename:"enabled"} run data modify storage eden:settings bestiary.villager_settings.villagename_initial set value "false"
execute unless data storage eden:settings bestiary.villager_settings{villagename:"enabled"} run data modify storage eden:settings bestiary.villager_settings.villagename_initial set value "true"

execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"disabled"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_chat_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"disabled"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_actionbar_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"disabled"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_title_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"chat"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_chat_initial set value "true"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"chat"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_actionbar_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"chat"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_title_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"actionbar"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_chat_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"actionbar"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_actionbar_initial set value "true"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"actionbar"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_title_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"title"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_chat_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"title"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_actionbar_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagename_msg:"title"} run data modify storage eden:settings bestiary.villager_settings.villagename_msg_title_initial set value "true"

execute if data storage eden:settings bestiary.villager_settings{villagename_rename:"enabled"} run data modify storage eden:settings bestiary.villager_settings.villagename_rename_initial set value "false"
execute unless data storage eden:settings bestiary.villager_settings{villagename_rename:"enabled"} run data modify storage eden:settings bestiary.villager_settings.villagename_rename_initial set value "true"

execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"always"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_daytime_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"always"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_nighttime_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"always"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_disabled_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"daytime"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_daytime_initial set value "true"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"daytime"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_nighttime_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"daytime"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_disabled_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"nighttime"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_daytime_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"nighttime"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_nighttime_initial set value "true"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"nighttime"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_disabled_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"disabled"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_daytime_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"disabled"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_nighttime_initial set value "false"
execute if data storage eden:settings bestiary.villager_settings{villagecenter_healing:"disabled"} run data modify storage eden:settings bestiary.villager_settings.villagecenter_healing_disabled_initial set value "true"

# dialog show @s evercraft:mobs/main  # TODO: dialog registry entry not yet created