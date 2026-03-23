# Black Market — Load Sale Price from Escrow Slot (Macro)
$execute store result score #bm_sale_price ec.bm_temp run data get storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3).items[$(slot)].price
