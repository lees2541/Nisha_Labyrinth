say 모션종료
execute as @p[team=roamer,tag=hunter] run scoreboard players set @s NL_mode 0
item modify entity @p[team=roamer,tag=hunter] weapon.mainhand nl_system:systems/item/update/tool 