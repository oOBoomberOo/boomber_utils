scoreboard players operation #bb.math.number bb.calculation = #bb.math.input.number bb.variable
execute if score #bb.math.number bb.calculation matches ..-1000 unless score #bb.math.number bb.calculation matches -1000 run scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.calculation matches 1000.. unless score #bb.math.number bb.calculation matches 1000 run scoreboard players set #bb.math.result bb.variable 0

execute if score #bb.math.number bb.calculation matches 0.. run scoreboard players set #bb.math.extra bb.calculation 1
execute if score #bb.math.number bb.calculation matches ..-1 run scoreboard players set #bb.math.extra bb.calculation -1
execute if score #bb.math.number bb.calculation matches ..-1 run scoreboard players operation #bb.math.number bb.calculation *= #-1 bb.variable

scoreboard players set #bb.math.result bb.variable 0
execute if score #bb.math.number bb.calculation matches 0..341 run function boomber:math/arcsine/1
execute if score #bb.math.number bb.calculation matches 342..642 run function boomber:math/arcsine/2
execute if score #bb.math.number bb.calculation matches 643..865 run function boomber:math/arcsine/3
execute if score #bb.math.number bb.calculation matches 866..984 run function boomber:math/arcsine/4
execute if score #bb.math.number bb.calculation matches 985..1000 run function boomber:math/arcsine/5

scoreboard players operation #bb.math.result bb.variable *= #bb.math.extra bb.calculation