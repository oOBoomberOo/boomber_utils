scoreboard players operation #bb.math.number bb.calculation = #bb.math.input.number bb.variable
execute if score #bb.math.number bb.calculation matches ..-1 unless score #bb.math.number bb.calculation matches -1 run scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.calculation matches 1.. unless score #bb.math.number bb.calculation matches 1 run scoreboard players set #bb.math.result bb.variable 0

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.angle bb.calculation matches 943..1000 run function boomber:math/arccosine/1
execute if score #bb.math.angle bb.calculation matches 772..943 run function boomber:math/arccosine/2
execute if score #bb.math.angle bb.calculation matches 508..772 run function boomber:math/arccosine/3
execute if score #bb.math.angle bb.calculation matches 182..508 run function boomber:math/arccosine/4
execute if score #bb.math.angle bb.calculation matches -165..182 run function boomber:math/arccosine/5
execute if score #bb.math.angle bb.calculation matches -492..-165 run function boomber:math/arccosine/6
execute if score #bb.math.angle bb.calculation matches -760..-492 run function boomber:math/arccosine/7
execute if score #bb.math.angle bb.calculation matches -937..-760 run function boomber:math/arccosine/8
execute if score #bb.math.angle bb.calculation matches -1000..-937 run function boomber:math/arccosine/9
