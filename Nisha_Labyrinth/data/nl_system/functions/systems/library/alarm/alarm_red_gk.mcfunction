

execute if score #t_interact NL_return matches 1 run tellraw @a [{"selector":"@s"},{"text":"(이)가 오염된 발판으로 도서관을 폐쇄했습니다!"}]
execute if score #t_interact NL_return matches 1 run return 0


#execute if data entity @e[type=minecraft:zombie,limit=1] AngryAt run say hi