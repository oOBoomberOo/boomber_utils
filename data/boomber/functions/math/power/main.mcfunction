scoreboard players set #bb.math.success bb.success 0
execute if score #bb.math.success bb.success matches 0 if score #bb.math.power matches 0 run function boomber:math/power/zero
execute if score #bb.math.success bb.success matches 0 if score #bb.math.base matches ..-1 run function boomber:math/power/negative_base
execute if score #bb.math.success bb.success matches 0 if score #bb.math.power matches ..-1 run function boomber:math/power/negative_power
execute if score #bb.math.success bb.success matches 0 if score #bb.math.power matches 1.. if score #bb.math.base matches 0.. run function boomber:math/power/positive_power
