execute if items entity @s player.cursor *[custom_data~{NL:1b,info_book:1b}] unless items entity @s hotbar.8 written_book[custom_data~{NL:1b,info_book:1b}] run item replace entity @s player.cursor from entity @s hotbar.8


clear @s *[custom_data~{NL:1b,info_book:1b}]
function nl_char:items/give_info_book
