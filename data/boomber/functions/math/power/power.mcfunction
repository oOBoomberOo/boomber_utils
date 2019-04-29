scoreboard players remove #bb.math.power bb.calculation 1
scoreboard players operation #bb.math.result bb.variable *= #bb.math.base bb.calculation
execute if score #bb.math.power bb.calculation matches 1.. run function boomber:math/power/power