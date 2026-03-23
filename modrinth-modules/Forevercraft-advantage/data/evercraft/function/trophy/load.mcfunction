# Trophy System — Load
# ec.cf_trophies bitfield already exists (from craftforever/load)
# Each bit = one trophy (0-14, 15 trophies total)
# Bit 0: Hearthkeeper, 1: Grand Architect, 2: Legendary Builder
# Bit 3: Dragon Slayer, 4: Wither Bane, 5: World Explorer
# Bit 6: Lore Keeper, 7: Battle Master, 8: Pack Leader
# Bit 9: CraftForever Star, 10: Treasure Hunter, 11: Expeditionist
# Bit 12: Realm Champion, 13: Spirit Forger, 14: Guild Legend

# Bit divisors for trophy checks (powers of 2)
scoreboard players set #trophy_bit_0 ec.const 1
scoreboard players set #trophy_bit_1 ec.const 2
scoreboard players set #trophy_bit_2 ec.const 4
scoreboard players set #trophy_bit_3 ec.const 8
scoreboard players set #trophy_bit_4 ec.const 16
scoreboard players set #trophy_bit_5 ec.const 32
scoreboard players set #trophy_bit_6 ec.const 64
scoreboard players set #trophy_bit_7 ec.const 128
scoreboard players set #trophy_bit_8 ec.const 256
scoreboard players set #trophy_bit_9 ec.const 512
scoreboard players set #trophy_bit_10 ec.const 1024
scoreboard players set #trophy_bit_11 ec.const 2048
scoreboard players set #trophy_bit_12 ec.const 4096
scoreboard players set #trophy_bit_13 ec.const 8192
scoreboard players set #trophy_bit_14 ec.const 16384
