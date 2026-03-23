# ============================================================
# Artifact Bounty Board — Define Artifact Pool (25 entries)
# 5 per tier (Common-Exquisite), stored in eden:database bounty_board.pool[]
# Each: {id, name, tier, coins, color} — color matches rarity
# Reward = coins + random niche fountain item (tier-matched)
# ============================================================

data modify storage eden:database bounty_board.pool set value [\
  {id:"pebble_of_dreams",name:"Pebble of Dreams",tier:1,coins:5,color:"white"},\
  {id:"healer_poultice",name:"Herbal Poultice",tier:1,coins:5,color:"white"},\
  {id:"travelers_charm",name:"Travelers Charm",tier:1,coins:5,color:"white"},\
  {id:"common_deku_shield",name:"Deku Shield",tier:1,coins:5,color:"white"},\
  {id:"worn_compass",name:"Worn Compass",tier:1,coins:5,color:"white"},\
  {id:"glowstone_pendant",name:"Glowstone Pendant",tier:2,coins:10,color:"blue"},\
  {id:"featherweight_stone",name:"Featherweight Stone",tier:2,coins:10,color:"blue"},\
  {id:"iron_talisman",name:"Iron Talisman",tier:2,coins:10,color:"blue"},\
  {id:"dust_storm",name:"Dust Storm",tier:2,coins:10,color:"blue"},\
  {id:"uncommon_anchor",name:"Anchor",tier:2,coins:10,color:"blue"},\
  {id:"ruin_watch",name:"Ruin Watch",tier:3,coins:20,color:"aqua"},\
  {id:"heartstone",name:"Heartstone",tier:3,coins:20,color:"aqua"},\
  {id:"healer_chalice",name:"Mending Chalice",tier:3,coins:20,color:"aqua"},\
  {id:"stormcatcher_shard",name:"Stormcatcher Shard",tier:3,coins:20,color:"aqua"},\
  {id:"diamond_ring",name:"Diamond Ring",tier:3,coins:20,color:"aqua"},\
  {id:"cartographers_lens",name:"Cartographers Lens",tier:4,coins:45,color:"light_purple"},\
  {id:"wind_chime",name:"Wind Chime",tier:4,coins:45,color:"light_purple"},\
  {id:"phoenix_feather",name:"Phoenix Feather",tier:4,coins:45,color:"light_purple"},\
  {id:"anglers_pearl",name:"Anglers Pearl",tier:4,coins:45,color:"light_purple"},\
  {id:"merchants_coin",name:"Merchants Coin",tier:4,coins:45,color:"light_purple"},\
  {id:"claudes_eye",name:"Claudes Eye",tier:5,coins:70,color:"magenta"},\
  {id:"phantom_charm",name:"Phantom Charm",tier:5,coins:70,color:"magenta"},\
  {id:"sculk_heart",name:"Sculk Heart",tier:5,coins:70,color:"magenta"},\
  {id:"berserker_totem",name:"Totem of the Berserker",tier:5,coins:70,color:"magenta"},\
  {id:"healer_lotus",name:"Celestial Lotus",tier:5,coins:70,color:"magenta"}\
]
