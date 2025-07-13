#> nl_char:jobs/explorer/magician/set_player
# 캐릭터 선택 후 플레이어 개인의 정보를 설정하는 함수

execute store result score @s NL_cmd_tool run data get storage nl:book.magician player.custom_model_data.tool1
execute store result score @s NL_cmd_tool2 run data get storage nl:book.magician player.custom_model_data.tool2
execute store result score @s NL_cmd_book run data get storage nl:book.magician player.custom_model_data.book1


scoreboard players set @s NL_skill_cool1 0
scoreboard players set @s NL_magician_altar 0






