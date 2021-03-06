# Float4 arctangent function
# <- Float4 number: number in range [-∞, ∞]
# -> Int result: calculated θ

scoreboard players operation #bb.math.number bb.function = #bb.math.input.number bb.variable

execute if score #bb.math.number bb.function matches 0.. run scoreboard players set #bb.math.extra bb.function 1
execute if score #bb.math.number bb.function matches ..-1 run scoreboard players set #bb.math.extra bb.function -1
execute if score #bb.math.number bb.function matches ..-1 run scoreboard players operation #bb.math.number bb.function *= #-1 bb.variable

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.function matches 0..353 run function boomber:math/function/arctangent/1
execute if score #bb.math.number bb.function matches 354..823 run function boomber:math/function/arctangent/2
execute if score #bb.math.number bb.function matches 824..1697 run function boomber:math/function/arctangent/3
execute if score #bb.math.number bb.function matches 1698..5395 run function boomber:math/function/arctangent/4
execute if score #bb.math.number bb.function matches 5396..2147483647 run function boomber:math/function/arctangent/5

scoreboard players operation #bb.math.result bb.variable *= #bb.math.extra bb.function

function boomber:math/debug/debugger