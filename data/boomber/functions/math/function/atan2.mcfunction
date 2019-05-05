# Modified arctangent function
# <- Float4 x: adjacent length, Float4 y: opposite length
# -> Int result: calculated θ

scoreboard players operation #bb.math.x bb.function = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.y bb.function = #bb.math.input.y bb.variable

scoreboard players set #bb.math.success bb.success 0
scoreboard players set #bb.math.result bb.variable 0

# Order is very VERY importance
execute if score #bb.math.success bb.success matches 0 if score #bb.math.x bb.function matches 0 if score #bb.math.y bb.function matches 0 run function boomber:math/function/atan2/0
execute if score #bb.math.success bb.success matches 0 if score #bb.math.x bb.function matches 1.. run function boomber:math/function/atan2/1
execute if score #bb.math.success bb.success matches 0 if score #bb.math.x bb.function matches ..-1 if score #bb.math.y bb.function matches 0.. run function boomber:math/function/atan2/2
execute if score #bb.math.success bb.success matches 0 if score #bb.math.x bb.function matches ..-1 if score #bb.math.y bb.function matches ..-1 run function boomber:math/function/atan2/3
execute if score #bb.math.success bb.success matches 0 if score #bb.math.x bb.function matches 0 if score #bb.math.y bb.function matches 1.. run function boomber:math/function/atan2/4
execute if score #bb.math.success bb.success matches 0 if score #bb.math.x bb.function matches 0 if score #bb.math.y bb.function matches ..-1 run function boomber:math/function/atan2/5

function boomber:math/debug/debugger