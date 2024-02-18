#> nl_system:systems/shop/make_active
# 상점을 이용가능하도록 바꾼다
#@within nl_system:systems/shop/used_coin

scoreboard players set @e[type=interaction,tag=NL,tag=shop,limit=1] NL_mode 0