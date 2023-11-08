#> nl_system:loop/explorer/explorer_loop
# 틱당 모든 탐험가들이 실행
# @context @a[tag=explorer,tag=NL]
# @input  
#   score 대상 {3:objective} 
#       설명 
# @output 
#   storage nl:buffer 
#       player.id: int 
#           설명 
#       player.character: string 
#           설명

execute if entity @e[type=item,nbt={Item:{tag:{drop:0b,NL:1b}}}] as @e[type=item,nbt={Item:{tag:{drop:0b,NL:1b}}},nbt=!{PickupDelay:0s},distance=..0.5,limit=1] run data merge entity @s {PickupDelay:0s} 