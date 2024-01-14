#Running custom per-step commands.

say one step in the raycast

#Check if an entity was detected.

execute if score #hit NL_raycasting matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#nl_raycasting:entities,tag=!raycasting,dx=0,sort=nearest] run function nl_raycasting:check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #nl_raycasting:blocks run function nl_raycasting:hit_block
scoreboard players add #distance NL_raycasting 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit NL_raycasting matches 0 if score #distance NL_raycasting matches 101.. run function nl_raycasting:failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit NL_raycasting matches 0 if score #distance NL_raycasting matches ..100 positioned ^ ^ ^0.1 run function nl_raycasting:ray