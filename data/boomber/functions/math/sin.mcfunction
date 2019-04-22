scoreboard players operation #bb.math.angle bb.calculation = #bb.math.input.angle bb.variable
scoreboard players operation #bb.math.angle bb.calculation %= #360 bb.variable

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.angle bb.calculation matches 0..19 run function boomber:math/sine/1
execute if score #bb.math.angle bb.calculation matches 20..39 run function boomber:math/sine/2
execute if score #bb.math.angle bb.calculation matches 40..59 run function boomber:math/sine/3
execute if score #bb.math.angle bb.calculation matches 60..79 run function boomber:math/sine/4
execute if score #bb.math.angle bb.calculation matches 80..99 run function boomber:math/sine/5
execute if score #bb.math.angle bb.calculation matches 100..119 run function boomber:math/sine/6
execute if score #bb.math.angle bb.calculation matches 120..139 run function boomber:math/sine/7
execute if score #bb.math.angle bb.calculation matches 140..159 run function boomber:math/sine/8
execute if score #bb.math.angle bb.calculation matches 160..179 run function boomber:math/sine/9
execute if score #bb.math.angle bb.calculation matches 180..199 run function boomber:math/sine/10
execute if score #bb.math.angle bb.calculation matches 200..219 run function boomber:math/sine/11
execute if score #bb.math.angle bb.calculation matches 220..239 run function boomber:math/sine/12
execute if score #bb.math.angle bb.calculation matches 240..259 run function boomber:math/sine/13
execute if score #bb.math.angle bb.calculation matches 260..279 run function boomber:math/sine/14
execute if score #bb.math.angle bb.calculation matches 280..299 run function boomber:math/sine/15
execute if score #bb.math.angle bb.calculation matches 300..319 run function boomber:math/sine/16
execute if score #bb.math.angle bb.calculation matches 320..339 run function boomber:math/sine/17
execute if score #bb.math.angle bb.calculation matches 340..359 run function boomber:math/sine/18
