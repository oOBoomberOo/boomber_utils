# Float4 arcsine function
# <- Float4 number: number in range [-1, 1]
# -> Int result: calculated θ

scoreboard players operation #bb.math.number bb.function = #bb.math.input.number bb.variable
execute if score #bb.math.number bb.function matches ..-1000 unless score #bb.math.number bb.function matches -1000 run scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.function matches 1000.. unless score #bb.math.number bb.function matches 1000 run scoreboard players set #bb.math.result bb.variable 0

execute if score #bb.math.number bb.function matches 0.. run scoreboard players set #bb.math.extra bb.function 1
execute if score #bb.math.number bb.function matches ..-1 run scoreboard players set #bb.math.extra bb.function -1
execute if score #bb.math.number bb.function matches ..-1 run scoreboard players operation #bb.math.number bb.function *= #-1 bb.variable

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.function matches 0..341 run function boomber:math/function/arcsine/1
execute if score #bb.math.number bb.function matches 342..642 run function boomber:math/function/arcsine/2
execute if score #bb.math.number bb.function matches 643..865 run function boomber:math/function/arcsine/3
execute if score #bb.math.number bb.function matches 866..984 run function boomber:math/function/arcsine/4
execute if score #bb.math.number bb.function matches 985..1000 run function boomber:math/function/arcsine/5

scoreboard players operation #bb.math.result bb.variable *= #bb.math.extra bb.function

function boomber:math/debug/debugger