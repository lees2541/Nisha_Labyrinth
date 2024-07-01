#> nl_system:modules/status_effect/update/clear_expired_status/clear_expired_status
#
#@context 대상 {Base:(id)}
#@input
#   storage nl:buffer
#       status.subarray
#           id
#           type
#           tag
#@within nl_system:modules/status_effect/update/update_storage

execute if data storage nl:buffer status.subarray[0] run function nl_system:modules/status_effect/update/clear_expired_status/call_clear_function with storage nl:buffer status.subarray[0]

execute if data storage nl:buffer status.subarray[1] run function nl_system:modules/status_effect/update/clear_expired_status/call_clear_function with storage nl:buffer status.subarray[1]

execute if data storage nl:buffer status.subarray[2] run function nl_system:modules/status_effect/update/clear_expired_status/call_clear_function with storage nl:buffer status.subarray[2]

execute if data storage nl:buffer status.subarray[3] run function nl_system:modules/status_effect/update/clear_expired_status/call_clear_function with storage nl:buffer status.subarray[3]

execute if data storage nl:buffer status.subarray[4] run function nl_system:modules/status_effect/update/clear_expired_status/call_clear_function with storage nl:buffer status.subarray[4]