# Cosine function
# <- Int angle: an angle
# -> Float4 result: Float4 in range [-1, 1]

scoreboard players operation #bb.math.θ bb.function = #bb.math.input.angle bb.variable
scoreboard players operation #bb.math.θ bb.function %= #360 bb.variable

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.θ bb.function matches 0..19 run function boomber:math/function/cosine/1
execute if score #bb.math.θ bb.function matches 20..39 run function boomber:math/function/cosine/2
execute if score #bb.math.θ bb.function matches 40..59 run function boomber:math/function/cosine/3
execute if score #bb.math.θ bb.function matches 60..79 run function boomber:math/function/cosine/4
execute if score #bb.math.θ bb.function matches 80..99 run function boomber:math/function/cosine/5
execute if score #bb.math.θ bb.function matches 100..119 run function boomber:math/function/cosine/6
execute if score #bb.math.θ bb.function matches 120..139 run function boomber:math/function/cosine/7
execute if score #bb.math.θ bb.function matches 140..159 run function boomber:math/function/cosine/8
execute if score #bb.math.θ bb.function matches 160..179 run function boomber:math/function/cosine/9
execute if score #bb.math.θ bb.function matches 180..199 run function boomber:math/function/cosine/10
execute if score #bb.math.θ bb.function matches 200..219 run function boomber:math/function/cosine/11
execute if score #bb.math.θ bb.function matches 220..239 run function boomber:math/function/cosine/12
execute if score #bb.math.θ bb.function matches 240..259 run function boomber:math/function/cosine/13
execute if score #bb.math.θ bb.function matches 260..279 run function boomber:math/function/cosine/14
execute if score #bb.math.θ bb.function matches 280..299 run function boomber:math/function/cosine/15
execute if score #bb.math.θ bb.function matches 300..319 run function boomber:math/function/cosine/16
execute if score #bb.math.θ bb.function matches 320..339 run function boomber:math/function/cosine/17
execute if score #bb.math.θ bb.function matches 340..359 run function boomber:math/function/cosine/18

function boomber:math/debug/debugger