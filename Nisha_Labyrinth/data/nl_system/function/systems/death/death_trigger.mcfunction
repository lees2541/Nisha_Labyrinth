#> nl_system:systems/death/death_trigger
# 플레이어가 죽었을 때 발동
#@context 죽은 플레이어
say 으앙 주금
scoreboard players set @s NL_death 0
function nl_lobby:clear/tags/clear_debuff
function nl_lobby:clear/tags/clear_buff


team join prisoner @s[team=explorer]

summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Small:1b,Tags:["NL","coordinate","nl_vfx","imprison","imp_arm"]}
function nl_vfx:map/cave/trigger/imprison
function nl_system:modules/status_gui/profile_icon/case/prisoner
execute unless data storage nl:settings etc{earlydeath:0} run return run function nl_system:systems/death/early_death
spawnpoint @a 715 39 580
tag @s add prisoner

