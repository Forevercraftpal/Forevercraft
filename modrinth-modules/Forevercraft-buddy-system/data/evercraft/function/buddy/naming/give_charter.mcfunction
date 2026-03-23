# Buddy Naming — Give Charter (writable book)
# @s = the target mob entity (no CustomName)
# Player context available via #bd_owner

# Mark player as in naming flow
execute as @a if score @s companion.id = #bd_owner ec.temp run scoreboard players set @s ec.bd_naming 1

# Give the player a Buddy Charter book
execute as @a if score @s companion.id = #bd_owner ec.temp run item replace entity @s weapon.mainhand with minecraft:writable_book[custom_name={text:"Buddy Charter",color:"gold",italic:false},custom_data={buddy_charter:1b},writable_book_content={pages:["Write your buddy's name on this page and sign the charter!"]}] 1

execute as @a if score @s companion.id = #bd_owner ec.temp run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Write your buddy's name on page 1 of the charter and ",color:"yellow"},{text:"sign it",color:"green",bold:true},{text:" to complete the bond!",color:"yellow"}]

# Play a sound
execute as @a if score @s companion.id = #bd_owner ec.temp at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
