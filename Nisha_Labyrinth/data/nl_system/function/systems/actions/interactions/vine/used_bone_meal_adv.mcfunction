#> nl_system:systems/actions/interactions/vine/used_bone_meal_adv
# 수감자가 뼛가루로 덩굴에 상호작용했을떄 발동, 긴급탈출

execute as @a[team=prisoner,tag=prisoner] run tag @s add exit
#execute as @a[team=prisoner,tag=prisoner,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] run clear @s bone_meal 1


function nl_vfx:map/cave/trigger/unseal_break