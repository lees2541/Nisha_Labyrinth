#> nl_system:systems/death/death_trigger
# 플레이어가 죽었을 때 발동
#@context 죽은 플레이어
say 으앙 주금
scoreboard players set @s NL_death 0
function nl_lobby:clear/tags/clear_debuff
function nl_lobby:clear/tags/clear_buff


team join prisoner @s[team=explorer]

execute unless data storage nl:settings etc{earlydeath:0} run return run function nl_system:systems/death/early_death

tag @s add prisoner

