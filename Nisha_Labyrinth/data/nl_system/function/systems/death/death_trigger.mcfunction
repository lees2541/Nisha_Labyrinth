#> nl_system:systems/death/death_trigger
# 플레이어가 죽었을 때 발동
#@context 죽은 플레이어 with storage nl:buffer player
say 으앙 주금
scoreboard players set @s NL_death 0
function nl_lobby:clear/tags/clear_debuff
function nl_lobby:clear/tags/clear_buff
$function nl_char:char_functions/explorer/$(character)/actions/death/death with storage nl:buffer player

team join prisoner @s[team=explorer]


function nl_system:systems/death/activate_imprison with entity @s

function nl_system:modules/status_gui/profile_icon/case/prisoner
execute unless data storage nl:settings etc{earlydeath:0} run return run function nl_system:systems/death/early_death
spawnpoint @a 715 39 580
tag @s add prisoner

