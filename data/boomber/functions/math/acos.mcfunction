scoreboard players operation #bb.math.number bb.calculation = #bb.math.input.number bb.variable
execute if score #bb.math.number bb.calculation matches ..-1 unless score #bb.math.number bb.calculation matches -1 run scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.calculation matches 1.. unless score #bb.math.number bb.calculation matches 1 run scoreboard players set #bb.math.result bb.variable 0

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 0*20) deg) * 1000)..round(cos((0 + 0*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/1
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 1*20) deg) * 1000)..round(cos((0 + 1*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/2
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 2*20) deg) * 1000)..round(cos((0 + 2*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/3
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 3*20) deg) * 1000)..round(cos((0 + 3*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/4
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 4*20) deg) * 1000)..round(cos((0 + 4*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/5
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 5*20) deg) * 1000)..round(cos((0 + 5*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/5
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 6*20) deg) * 1000)..round(cos((0 + 6*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/5
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 7*20) deg) * 1000)..round(cos((0 + 7*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/5
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 8*20) deg) * 1000)..round(cos((0 + 8*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/5
execute if score #bb.math.angle bb.calculation matches round(cos((0 + 9*20) deg) * 1000)..round(cos((0 + 9*20 + 20) deg) * 1000)-1 run function boomber:math/arccosine/5
