# Guild — Create failed (validation error)
# Consume signed charter, give back unsigned, revoke advancement so it can re-trigger
# Must consume BEFORE revoking — revoking while written_book exists causes immediate re-trigger loop

clear @s minecraft:written_book[custom_data~{guild_charter:1b}] 1
give @s minecraft:writable_book[custom_data={guild_charter:1b,evercraft_item:1b},custom_name="Guild Charter",lore=["Write your guild name on page 1","and sign to found your guild."],enchantment_glint_override=true,writable_book_content={}] 1
advancement revoke @s only evercraft:guild/use_charter
