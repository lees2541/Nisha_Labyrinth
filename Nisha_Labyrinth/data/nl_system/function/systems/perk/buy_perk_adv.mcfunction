#> nl_system:systems/perk/buy_perk
execute if items entity @s player.cursor paper[custom_data~{perk1:1b}] store result score @s NL_cmd_book run data get entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.player.custom_model_data.book2
execute if items entity @s player.cursor paper[custom_data~{perk1:1b}] store result score @s NL_cmd_tool run data get entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.player.custom_model_data.tool2
execute if items entity @s player.cursor paper[custom_data~{perk1:1b}] run scoreboard players set @s NL_perk 1




execute if items entity @s player.cursor paper[custom_data~{perk2:1b}] store result score @s NL_cmd_book run data get entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.player.custom_model_data.book3
execute if items entity @s player.cursor paper[custom_data~{perk2:1b}] store result score @s NL_cmd_tool run data get entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.player.custom_model_data.tool3
execute if items entity @s player.cursor paper[custom_data~{perk2:1b}] run scoreboard players set @s NL_perk 2
clear @s paper[custom_data~{perk:1b}]

loot give @s loot nl_char:command/items/common/tool
function nl_char:items/give_info_book