function nl_system:loop/shader/flashlight/flashlight_loop


execute if data entity @s active_effects[{id:"minecraft:glowing"}] at @s run particle entity_effect{color:[0.9960784313725490196078431372549, 0.9725490196078431 ,0,1.0]} ~ ~ ~ 0 0 0 1 0 force @s
execute at @s unless data entity @s active_effects[{id:"minecraft:glowing"}] run particle entity_effect{color:[0.9960784313725490196078431372549, 0.9725490196078431 ,1,1.0]} ~ ~ ~ 0 0 0 1 0 force @s