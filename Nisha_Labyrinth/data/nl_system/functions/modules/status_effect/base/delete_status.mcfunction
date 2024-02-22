#> nl_system:modules/status_effect/base/delete_status
# 
#@context 대상 with storage nl:buffer status
#@input
#   storage nl:buffer
#       status.id
#           플레이어 id
#       status.type
#           지울 타입

$data remove storage nl:in_game player[{id:$(id)}].status.status[{type:"$(type)"}]