# Black Market — Check Pending Sale (Macro)
$execute if data storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3){sale_pending:1b} run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Someone bought your goods! Check your pending balance.",color:"gold"}]
$execute if data storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3){sale_pending:1b} run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.5
$data modify storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3).sale_pending set value 0b
