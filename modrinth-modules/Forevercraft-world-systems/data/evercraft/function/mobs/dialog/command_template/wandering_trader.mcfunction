$data modify storage eden:settings bestiary.wandering_trader_settings merge value {treasurebookpayamount:$(treasurebookpayamount),treasurebookpayitem:'$(treasurebookpayitem)',treasurebook:$(treasurebook),plushiepayamount:$(plushiepayamount),plushiepayitem:'$(plushiepayitem)',plushie:$(plushie),spawnmsg:$(spawnmsg),spawnglow:$(spawnglow),miniblockpayamount:$(miniblockpayamount),miniblockpayitem:'$(miniblockpayitem)',miniblock:$(miniblock),customname:$(customname)}

execute if data storage eden:settings bestiary.wandering_trader_settings{customname:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.customname_initial set value "false"
execute unless data storage eden:settings bestiary.wandering_trader_settings{customname:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.customname_initial set value "true"

execute if data storage eden:settings bestiary.wandering_trader_settings{miniblock:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.miniblock_initial set value "false"
execute unless data storage eden:settings bestiary.wandering_trader_settings{miniblock:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.miniblock_initial set value "true"

execute if data storage eden:settings bestiary.wandering_trader_settings{plushie:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.plushie_initial set value "false"
execute unless data storage eden:settings bestiary.wandering_trader_settings{plushie:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.plushie_initial set value "true"

execute if data storage eden:settings bestiary.wandering_trader_settings{treasurebook:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.treasurebook_initial set value "false"
execute unless data storage eden:settings bestiary.wandering_trader_settings{treasurebook:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.treasurebook_initial set value "true"

execute if data storage eden:settings bestiary.wandering_trader_settings{spawnglow:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.spawnglow_initial set value "false"
execute unless data storage eden:settings bestiary.wandering_trader_settings{spawnglow:"enabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.spawnglow_initial set value "true"

execute if data storage eden:settings bestiary.wandering_trader_settings{spawnmsg:"disabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.spawnmsg_chat_initial set value "false"
execute if data storage eden:settings bestiary.wandering_trader_settings{spawnmsg:"disabled"} run data modify storage eden:settings bestiary.wandering_trader_settings.spawnmsg_actionbar_initial set value "false"
execute if data storage eden:settings bestiary.wandering_trader_settings{spawnmsg:"chat"} run data modify storage eden:settings bestiary.wandering_trader_settings.spawnmsg_chat_initial set value "true"
execute if data storage eden:settings bestiary.wandering_trader_settings{spawnmsg:"chat"} run data modify storage eden:settings bestiary.wandering_trader_settings.spawnmsg_actionbar_initial set value "false"
execute if data storage eden:settings bestiary.wandering_trader_settings{spawnmsg:"actionbar"} run data modify storage eden:settings bestiary.wandering_trader_settings.spawnmsg_chat_initial set value "false"
execute if data storage eden:settings bestiary.wandering_trader_settings{spawnmsg:"actionbar"} run data modify storage eden:settings bestiary.wandering_trader_settings.spawnmsg_actionbar_initial set value "true"

# dialog show @s evercraft:mobs/main  # TODO: dialog registry entry not yet created