# Buddy Naming — Do Rename (player chose to rename)
# @s = player
# Give them the buddy charter to write a new name

scoreboard players set @s ec.bd_confirm 0
scoreboard players enable @s ec.bd_confirm

# Mark naming flow active
scoreboard players set @s ec.bd_naming 1

# Give charter book
item replace entity @s weapon.mainhand with minecraft:writable_book[custom_name={text:"Buddy Charter",color:"gold",italic:false},custom_data={buddy_charter:1b},writable_book_content={pages:["Write your buddy's new name on this page and sign the charter!"]}] 1

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Write your buddy's new name on page 1 and ",color:"yellow"},{text:"sign it",color:"green",bold:true},{text:"!",color:"yellow"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
