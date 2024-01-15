## 밑의 커맨드로 레이캐스팅 실행
#execute as <shooter> at @s anchored eyes positioned ^ ^ ^ anchored feet run function vdv_raycast:start_ray

#Setting up the raycasting data.

tag @s add raycasting
scoreboard players set #hit NL_raycasting 0
scoreboard players set #distance NL_raycasting 0

#Running custom pre-raycast commands.

say before raycasting

#Activating the raycast. This function will call itself until it is done.

function nl_raycasting:ray

#Running custom post-raycast commands.

say after raycasting

#Raycasting finished, removing tag from the raycaster.

tag @s remove raycasting