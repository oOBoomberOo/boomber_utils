scoreboard players set #bb.math.success bb.success 0

execute if score #bb.math.success bb.success matches 0 if score #bb.math.base bb.variable matches 0 if score #bb.math.exponent bb.variable matches 0 run function boomber:math/function/power/zero_both
execute if score #bb.math.success bb.success matches 0 if score #bb.math.base bb.variable matches 0 run function boomber:math/function/power/zero_base
execute if score #bb.math.success bb.success matches 0 if score #bb.math.exponent bb.variable matches 0 run function boomber:math/function/power/zero_exponent
execute if score #bb.math.success bb.success matches 0 if score #bb.math.exponent bb.variable matches 1.. run function boomber:math/function/power/positive_exponent
execute if score #bb.math.success bb.success matches 0 if score #bb.math.exponent bb.variable matches ..-1 run function boomber:math/function/power/negative_exponent