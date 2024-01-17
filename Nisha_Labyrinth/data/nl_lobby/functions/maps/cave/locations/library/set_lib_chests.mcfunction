#> nl_lobby:maps/cave/locations/library/set_lib_chests
# 동굴 맵의 도서관 상자 배치
kill @e[type=marker,tag=NL,tag=chest,tag=library]

summon marker 703 34 599 {Tags:["NL","chest","library"]}
summon marker 703 39 593 {Tags:["NL","chest","library"]}
summon marker 699 42 600 {Tags:["NL","chest","library"]}
summon marker 699 34 600 {Tags:["NL","chest","library"]}
summon marker 699 34 579 {Tags:["NL","chest","library"]}
summon marker 695 41 596 {Tags:["NL","chest","library"]}
summon marker 703 39 590 {Tags:["NL","chest","library"]}
summon marker 691 39 576 {Tags:["NL","chest","library"]}
summon marker 691 42 576 {Tags:["NL","chest","library"]}
summon marker 698 42 576 {Tags:["NL","chest","library"]}
summon marker 693 39 574 {Tags:["NL","chest","library"]}
summon marker 694 41 569 {Tags:["NL","chest","library"]}
summon marker 691 34 569 {Tags:["NL","chest","library"]}
summon marker 698 37 574 {Tags:["NL","chest","library"]}
summon marker 693 35 583 {Tags:["NL","chest","library"]}
summon marker 693 34 574 {Tags:["NL","chest","library"]}
summon marker 698 34 597 {Tags:["NL","chest","library"]}
summon marker 702 39 583 {Tags:["NL","chest","library"]}
summon marker 704 39 574 {Tags:["NL","chest","library"]}
summon marker 703 39 565 {Tags:["NL","chest","library"]}
summon marker 688 39 565 {Tags:["NL","chest","library"]}
summon marker 694 39 583 {Tags:["NL","chest","library"]}
summon marker 698 39 579 {Tags:["NL","chest","library"]}
summon marker 689 35 596 {Tags:["NL","chest","library"]}
summon marker 696 35 593 {Tags:["NL","chest","library"]}
summon marker 691 35 588 {Tags:["NL","chest","library"]}
summon marker 703 34 591 {Tags:["NL","chest","library"]}
summon marker 703 41 593 {Tags:["NL","chest","library"]}

execute as @e[type=marker,tag=chest,tag=library,tag=NL] at @s run setblock ~ ~ ~ chest replace