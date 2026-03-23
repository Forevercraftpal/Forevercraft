# ============================================================
# Black Market — Deal Pool Definition
# Populates eden:database black_market.pool with all buyable items
# Called once during load. 56 items total, 14 selected daily.
# ============================================================
# Sections: Common (0-3), Uncommon (4-7), Rare (8-11), Ornate (12-15),
#   Exquisite (16-19), Mythical (20-23), Vanilla (24-43), Pack (44-55)

data modify storage eden:database black_market.pool set value [\
{id:0,name:"Pebble of Dreams",price:2,loot:"evercraft:artifacts/common/pebble_of_dreams"},\
{id:1,name:"Herbal Poultice",price:2,loot:"evercraft:artifacts/common/herbal_poultice"},\
{id:2,name:"Traveler's Charm",price:2,loot:"evercraft:artifacts/common/travelers_charm"},\
{id:3,name:"Deku Shield",price:2,loot:"evercraft:artifacts/common/deku_shield"},\
{id:4,name:"Glowstone Pendant",price:4,loot:"evercraft:artifacts/uncommon/glowstone_pendant"},\
{id:5,name:"Featherweight Stone",price:4,loot:"evercraft:artifacts/uncommon/featherweight_stone"},\
{id:6,name:"Smelling Salts",price:4,loot:"evercraft:artifacts/uncommon/smelling_salts"},\
{id:7,name:"Iron Talisman",price:4,loot:"evercraft:artifacts/uncommon/iron_talisman"},\
{id:8,name:"Ruin Watch",price:8,loot:"evercraft:artifacts/rare/ruin_watch"},\
{id:9,name:"Mending Chalice",price:8,loot:"evercraft:artifacts/rare/mending_chalice"},\
{id:10,name:"Heartstone",price:8,loot:"evercraft:artifacts/rare/heartstone"},\
{id:11,name:"Stormcatcher Shard",price:8,loot:"evercraft:artifacts/rare/stormcatcher_shard"},\
{id:12,name:"Merchant's Coin",price:16,loot:"evercraft:artifacts/ornate/merchants_coin"},\
{id:13,name:"Cartographer's Lens",price:16,loot:"evercraft:artifacts/ornate/cartographers_lens"},\
{id:14,name:"Wind Chime",price:16,loot:"evercraft:artifacts/ornate/wind_chime"},\
{id:15,name:"Phoenix Feather",price:16,loot:"evercraft:artifacts/ornate/phoenix_feather"},\
{id:16,name:"Ring of Undying",price:24,loot:"evercraft:artifacts/exquisite/ring_of_undying"},\
{id:17,name:"Phantom Charm",price:24,loot:"evercraft:artifacts/exquisite/phantom_charm"},\
{id:18,name:"Sculk Heart",price:24,loot:"evercraft:artifacts/exquisite/sculk_heart"},\
{id:19,name:"Sea Heart Relic",price:24,loot:"evercraft:artifacts/exquisite/sea_heart_relic"},\
{id:20,name:"Hunter's Promise",price:48,loot:"evercraft:artifacts/mythical/hunters_promise"},\
{id:21,name:"Temporal Hourglass",price:48,loot:"evercraft:artifacts/mythical/temporal_hourglass"},\
{id:22,name:"Prism of Light",price:48,loot:"evercraft:artifacts/mythical/prism_of_light"},\
{id:23,name:"Heart of the Void",price:48,loot:"evercraft:artifacts/mythical/heart_of_the_void"},\
{id:24,name:"Enchanted Golden Apple",price:12,loot:"evercraft:black_market/deals/enchanted_golden_apple"},\
{id:25,name:"Totem of Undying",price:8,loot:"evercraft:black_market/deals/totem_of_undying"},\
{id:26,name:"Elytra",price:32,loot:"evercraft:black_market/deals/elytra"},\
{id:27,name:"Trident",price:10,loot:"evercraft:black_market/deals/trident"},\
{id:28,name:"Heart of the Sea",price:6,loot:"evercraft:black_market/deals/heart_of_the_sea"},\
{id:29,name:"Nether Star",price:16,loot:"evercraft:black_market/deals/nether_star"},\
{id:30,name:"Mace",price:10,loot:"evercraft:black_market/deals/mace"},\
{id:31,name:"Heavy Core",price:8,loot:"evercraft:black_market/deals/heavy_core"},\
{id:32,name:"Sponge x4",price:4,loot:"evercraft:black_market/deals/sponge"},\
{id:33,name:"Shulker Shell x2",price:4,loot:"evercraft:black_market/deals/shulker_shell"},\
{id:34,name:"Music Disc (random)",price:3,loot:"evercraft:black_market/deals/music_disc"},\
{id:35,name:"Saddle",price:2,loot:"evercraft:black_market/deals/saddle"},\
{id:36,name:"Name Tag x3",price:2,loot:"evercraft:black_market/deals/name_tag"},\
{id:37,name:"Recovery Compass",price:6,loot:"evercraft:black_market/deals/recovery_compass"},\
{id:38,name:"Spire Armor Trim",price:4,loot:"evercraft:black_market/deals/spire_armor_trim"},\
{id:39,name:"Silence Armor Trim",price:64,loot:"evercraft:black_market/deals/silence_armor_trim"},\
{id:40,name:"Wind Charge x16",price:3,loot:"evercraft:black_market/deals/wind_charge"},\
{id:41,name:"Ominous Bottle x3",price:4,loot:"evercraft:black_market/deals/ominous_bottle"},\
{id:42,name:"Sculk Catalyst",price:3,loot:"evercraft:black_market/deals/sculk_catalyst"},\
{id:43,name:"Conduit",price:6,loot:"evercraft:black_market/deals/conduit"},\
{id:44,name:"Common Crate",price:1,loot:"evercraft:achievements/crates/common"},\
{id:45,name:"Uncommon Crate",price:3,loot:"evercraft:achievements/crates/uncommon"},\
{id:46,name:"Rare Crate",price:6,loot:"evercraft:achievements/crates/rare"},\
{id:47,name:"Ornate Crate",price:10,loot:"evercraft:achievements/crates/ornate"},\
{id:48,name:"Amethyst Ring",price:4,loot:"evercraft:artifacts/special/ring_amethyst"},\
{id:49,name:"Lapis Ring",price:4,loot:"evercraft:artifacts/special/ring_lapis"},\
{id:50,name:"Redstone Ring",price:6,loot:"evercraft:artifacts/special/ring_redstone"},\
{id:51,name:"Diamond Ring",price:8,loot:"evercraft:artifacts/special/ring_diamond"},\
{id:52,name:"Emerald Ring",price:10,loot:"evercraft:artifacts/special/ring_emerald"},\
{id:53,name:"Bone Ring",price:10,loot:"evercraft:artifacts/special/ring_bone"},\
{id:54,name:"Nether Ring",price:16,loot:"evercraft:artifacts/special/ring_nether"},\
{id:55,name:"Void Ring",price:32,loot:"evercraft:artifacts/special/ring_void"}\
]
