# Float4 arccosine function
# <- Float4 number: number in range [-1, 1]
# -> Int result: calculated θ

scoreboard players operation #bb.math.number bb.function = #bb.math.input.number bb.variable
execute if score #bb.math.number bb.function matches ..-1 unless score #bb.math.number bb.function matches -1 run scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.function matches 1.. unless score #bb.math.number bb.function matches 1 run scoreboard players set #bb.math.result bb.variable 0

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.function matches 943..1000 run function boomber:math/function/arccosine/1
execute if score #bb.math.number bb.function matches 772..943 run function boomber:math/function/arccosine/2
execute if score #bb.math.number bb.function matches 508..772 run function boomber:math/function/arccosine/3
execute if score #bb.math.number bb.function matches 182..508 run function boomber:math/function/arccosine/4
execute if score #bb.math.number bb.function matches -165..182 run function boomber:math/function/arccosine/5
execute if score #bb.math.number bb.function matches -492..-165 run function boomber:math/function/arccosine/6
execute if score #bb.math.number bb.function matches -760..-492 run function boomber:math/function/arccosine/7
execute if score #bb.math.number bb.function matches -937..-760 run function boomber:math/function/arccosine/8
execute if score #bb.math.number bb.function matches -1000..-937 run function boomber:math/function/arccosine/9

function boomber:math/debug/debugger