scoreboard players operation #bb.math.num bb.function = #bb.math.input.number bb.variable
scoreboard players operation #bb.math.num bb.function *= #1000 bb.variable
scoreboard players set #bb.math.√nₚ bb.function 0
scoreboard players set #bb.math.√nₙ bb.function 12

scoreboard players set #bb.math.debug.i bb.variable -1
scoreboard players set #bb.math.success bb.success 0
execute if score #bb.math.success bb.success matches 0 if score #bb.math.num bb.function matches ..-1 run function boomber:math/function/sqrt/newton/negative
execute if score #bb.math.success bb.success matches 0 if score #bb.math.num bb.function matches 0.. run function boomber:math/function/sqrt/newton/loop

scoreboard players operation #bb.math.result bb.variable = #bb.math.√nₙ bb.function

function boomber:math/debug/debugger