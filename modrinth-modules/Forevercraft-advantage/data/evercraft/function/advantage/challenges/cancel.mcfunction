# Cancel active challenge
execute if score @s adv.chal_id matches 0 run return run tellraw @s [{text:"You don't have an active challenge.",color:"gray"}]

tellraw @s [{text:"✦ ",color:"gold"},{text:"Challenge cancelled.",color:"red"},{text:" You must wait 1 day before accepting a new one.",color:"gray"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.8

# Store cancel timestamp for lockout (1 day = 72000 gametime ticks)
execute store result score @s adv.chal_cancel run time query gametime

scoreboard players set @s adv.chal_id 0
scoreboard players set @s adv.chal_prog 0
scoreboard players set @s adv.chal_tree 0
scoreboard players set @s adv.chal_remind 0
scoreboard players set @s adv.chal_lprog 0
