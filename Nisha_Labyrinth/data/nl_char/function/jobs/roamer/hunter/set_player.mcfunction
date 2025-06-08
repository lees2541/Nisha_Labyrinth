#> nl_char:jobs/roamer/hunter/set_player
# 캐릭터 선택을 할때 실행되는 함수
execute store result score @s NL_cmd_tool run data get storage nl:book.survivor player.custom_model_data.tool1

execute store result score @s NL_cmd_book run data get storage nl:book.survivor player.custom_model_data.book1

data modify storage nl:in_game player[{team: "roamer"}].debuff_icon set value "uE215"

scoreboard players set @s NL_trap_count 4
scoreboard players set @s NL_cmd_tool 0
xp set @s 4 levels


