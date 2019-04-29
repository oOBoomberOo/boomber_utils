scoreboard players operation #bb.math.number bb.calculation = #bb.math.input.number bb.variable

execute if score #bb.math.number bb.calculation matches 0.. run scoreboard players set #bb.math.extra bb.calculation 1
execute if score #bb.math.number bb.calculation matches ..-1 run scoreboard players set #bb.math.extra bb.calculation -1
execute if score #bb.math.number bb.calculation matches ..-1 run scoreboard players operation #bb.math.number bb.calculation *= #-1 bb.variable

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.calculation matches 0..353 run function boomber:math/arctangent/1
execute if score #bb.math.number bb.calculation matches 354..823 run function boomber:math/arctangent/2
execute if score #bb.math.number bb.calculation matches 824..1697 run function boomber:math/arctangent/3
execute if score #bb.math.number bb.calculation matches 1698..5395 run function boomber:math/arctangent/4
execute if score #bb.math.number bb.calculation matches 5396..2147483647 run function boomber:math/arctangent/5

scoreboard players operation #bb.math.result bb.variable *= #bb.math.extra bb.calculation