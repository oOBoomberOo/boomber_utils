scoreboard players operation #bb.math.num bb.variable = #bb.math.input.number bb.variable
scoreboard players operation #bb.math.num bb.variable *= #1000 bb.variable
scoreboard players set #bb.math.√nₚ bb.variable 0
scoreboard players set #bb.math.√nₙ bb.variable 12

scoreboard players set #bb.math.debug.i bb.variable -1
scoreboard players set #bb.math.success bb.success 0
execute if score #bb.math.success bb.success matches 0 if score #bb.math.num bb.variable matches ..-1 run function boomber:math/function/sqrt/newton/negative
execute if score #bb.math.success bb.success matches 0 if score #bb.math.num bb.variable matches 0.. run function boomber:math/function/sqrt/newton/loop

scoreboard players operation #bb.math.result bb.variable = #bb.math.√nₙ bb.variable

function boomber:math/debug/debugger