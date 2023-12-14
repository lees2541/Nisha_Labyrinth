#> nl_lobby:lobby/jobs/change_job
# 설명 
# @context 캐릭터를 바꿀려는 플레이어 with nl:buffer settings.player 
# @input
#   storage nl:buffer
#       settings.player.id
#           플레이어 id
#       settings.player.team
#           플레이어 팀
#       settings.player.prev_character
#           원하는 캐릭터
#       settings.player.character
#           현재 캐릭터
#  
#   score 대상 {3:objective} 
#       설명 
# @output 
#   storage nl:buffer 
#       player.id: int 
#           설명 
#       player.character: string 
#           설명
# @within nl_lobby:lobby/jobs/choose_job

say 바꿈

$function nl_char:jobs/$(team)/$(prev_character)/reset_stats

$execute if data storage nl:settings player[{id:$(id)}] run data modify storage nl:settings player[{id:$(id)}].character set from storage nl:buffer settings.player.character
$execute if data storage nl:lobby settings.player[{id:$(id)}] run data modify storage nl:lobby settings.player[{id:$(id)}].character set from storage nl:buffer settings.player.character
$execute if data storage nl:in_game player[{id:$(id)}] run data modify storage nl:in_game player[{id:$(id)}].character set from storage nl:buffer settings.player.character

$execute if data storage nl:settings player[{id:$(id)}] run data modify storage nl:settings player[{id:$(id)}].team set from storage nl:buffer settings.player.team
$execute if data storage nl:lobby settings.player[{id:$(id)}] run data modify storage nl:lobby settings.player[{id:$(id)}].team set from storage nl:buffer settings.player.team
$execute if data storage nl:in_game player[{id:$(id)}] run data modify storage nl:in_game player[{id:$(id)}].team set from storage nl:buffer settings.player.team