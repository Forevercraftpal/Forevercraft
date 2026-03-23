# Message in a Bottle — Give writable book on craft
# Revoke advancement for re-triggering
advancement revoke @s only evercraft:bottles/craft

# Remove the knowledge_book placeholder
clear @s minecraft:knowledge_book 1

# Give writable book disguised as a bottle
give @s minecraft:writable_book[item_model="evercraft:message_bottle",custom_name={text:"Message in a Bottle",color:"gold",italic:true},lore=[{text:"Write your message and cast it to the sea...",color:"gray",italic:true},{text:"Sign the book to seal your message!",color:"dark_gray",italic:false}],custom_data={message_bottle:1b},writable_book_content={pages:["Write your message here..."]}] 1

# Notify
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You crafted a ",color:"white"},{text:"Message in a Bottle",color:"gold"},{text:"! Right-click to write, then ",color:"white"},{text:"sign",color:"aqua"},{text:" to seal your message.",color:"white"}]
