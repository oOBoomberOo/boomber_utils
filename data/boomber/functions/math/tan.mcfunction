scoreboard players operation #bb.math.angle bb.calculation = #bb.math.input.angle bb.variable
scoreboard players operation #bb.math.angle bb.calculation %= #360 bb.variable

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.angle bb.calculation matches 0..19 run function boomber:math/tangent/1
execute if score #bb.math.angle bb.calculation matches 20..39 run function boomber:math/tangent/2
execute if score #bb.math.angle bb.calculation matches 40..59 run function boomber:math/tangent/3
execute if score #bb.math.angle bb.calculation matches 60..79 run function boomber:math/tangent/4
execute if score #bb.math.angle bb.calculation matches 80..99 run function boomber:math/tangent/5
execute if score #bb.math.angle bb.calculation matches 100..119 run function boomber:math/tangent/6
execute if score #bb.math.angle bb.calculation matches 120..139 run function boomber:math/tangent/7
execute if score #bb.math.angle bb.calculation matches 140..159 run function boomber:math/tangent/8
execute if score #bb.math.angle bb.calculation matches 160..179 run function boomber:math/tangent/9
execute if score #bb.math.angle bb.calculation matches 180..199 run function boomber:math/tangent/10
execute if score #bb.math.angle bb.calculation matches 200..219 run function boomber:math/tangent/11
execute if score #bb.math.angle bb.calculation matches 220..239 run function boomber:math/tangent/12
execute if score #bb.math.angle bb.calculation matches 240..259 run function boomber:math/tangent/13
execute if score #bb.math.angle bb.calculation matches 260..279 run function boomber:math/tangent/14
execute if score #bb.math.angle bb.calculation matches 280..299 run function boomber:math/tangent/15
execute if score #bb.math.angle bb.calculation matches 300..319 run function boomber:math/tangent/16
execute if score #bb.math.angle bb.calculation matches 320..339 run function boomber:math/tangent/17
execute if score #bb.math.angle bb.calculation matches 340..359 run function boomber:math/tangent/18
