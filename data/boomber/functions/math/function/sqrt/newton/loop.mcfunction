scoreboard players add #bb.math.debug.i bb.variable 1
scoreboard players set #bb.math.success bb.success 1

scoreboard players operation #bb.math.√nₚ bb.function = #bb.math.√nₙ bb.function

scoreboard players operation #bb.math.offset bb.function = #bb.math.num bb.function
scoreboard players operation #bb.math.offset bb.function /= #bb.math.√nₙ bb.function

scoreboard players operation #bb.math.√nₙ bb.calculation = #bb.math.√nₙ bb.function
scoreboard players operation #bb.math.√nₙ bb.calculation += #bb.math.offset bb.function
scoreboard players operation #bb.math.√nₙ bb.calculation /= #2 bb.variable
scoreboard players operation #bb.math.√nₙ bb.function = #bb.math.√nₙ bb.calculation

execute unless score #bb.math.√nₚ bb.function = #bb.math.√nₙ bb.function run function boomber:math/function/sqrt/newton/loop