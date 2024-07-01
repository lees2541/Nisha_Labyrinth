#> nl_system:systems/actions/opened_chest/opened_chest_adv

## 도서관 상자 열었을 때
execute if entity @s[advancements={nl_system:location/library/in_the_library=true}] at @s anchored eyes positioned ^ ^ ^0.3 run function nl_system:systems/actions/opened_chest/opened_lib_chest


advancement revoke @s only nl_system:systems/actions/opened_chest/opened_chest_buffer

