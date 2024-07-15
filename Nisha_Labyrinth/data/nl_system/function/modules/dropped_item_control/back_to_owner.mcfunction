#$say components: $(components)
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0
#$execute on origin run give @s $(id)[$(components)] $(count)
