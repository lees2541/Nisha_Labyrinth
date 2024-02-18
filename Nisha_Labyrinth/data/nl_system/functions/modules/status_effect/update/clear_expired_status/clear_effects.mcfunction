#> nl_system:modules/status_effect/update/clear_expired_status/clear_effects
# 상태이상 스토리지에 지워진 상태이상과 같은 성질의 mob_effect가 없으면 그 mob_effect를 지운다
#@context 대상 with storage with storage nl:buffer status.effect
#@input
#   storage nl:buffer
#       status.effect
#           .player
#               플레이어 id
#           .id  
#               mob_effect이다
#           .amplifier
#               수치
#           .hide
#               파티클 적용여부
#@within nl_system:modules/status_effect/update/clear_expired_status/call_clear_function

$execute unless data storage nl:in_game player[{id:$(player)}].status.status[].effect[{id:"$(id)"}] run effect clear @s $(id)

