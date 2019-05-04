scoreboard players add #bb.math.debug.i bb.variable 1
scoreboard players set #bb.math.success bb.success 1

scoreboard players operation #bb.math.√nₚ bb.variable = #bb.math.√nₙ bb.variable

scoreboard players operation #bb.math.offset bb.calculation = #bb.math.num bb.variable
scoreboard players operation #bb.math.offset bb.calculation /= #bb.math.√nₙ bb.variable

scoreboard players operation #bb.math.√nₙ bb.calculation = #bb.math.√nₙ bb.variable
scoreboard players operation #bb.math.√nₙ bb.calculation += #bb.math.offset bb.calculation
scoreboard players operation #bb.math.√nₙ bb.calculation /= #2 bb.variable
scoreboard players operation #bb.math.√nₙ bb.variable = #bb.math.√nₙ bb.calculation

execute unless score #bb.math.√nₚ bb.variable = #bb.math.√nₙ bb.variable run function boomber:math/function/sqrt/newton/loop