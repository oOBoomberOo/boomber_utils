tellraw @s [{"text": "result: "}, {"score": {"name": "#bb.math.result", "objective": "bb.variable"}}]
execute if score #bb.math.debug.i bb.variable matches 1.. run tellraw @s [{"text": "iteration: "}, {"score": {"name": "#bb.math.debug.i", "objective": "bb.variable"}}]
