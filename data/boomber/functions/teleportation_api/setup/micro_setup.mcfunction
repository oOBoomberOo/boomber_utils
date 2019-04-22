scoreboard players operation #bb.tp_api.target.coord.x bb.variable = #bb.tp_api.input.target.x bb.variable
scoreboard players operation #bb.tp_api.target.coord.y bb.variable = #bb.tp_api.input.target.y bb.variable
scoreboard players operation #bb.tp_api.target.coord.z bb.variable = #bb.tp_api.input.target.z bb.variable
scoreboard players operation #bb.tp_api.target.coord.x bb.calculation = #bb.tp_api.target.coord.x bb.variable
scoreboard players operation #bb.tp_api.target.coord.y bb.calculation = #bb.tp_api.target.coord.y bb.variable
scoreboard players operation #bb.tp_api.target.coord.z bb.calculation = #bb.tp_api.target.coord.z bb.variable
scoreboard players operation #bb.tp_api.target.chunk.x bb.calculation = #bb.tp_api.target.coord.x bb.variable
scoreboard players operation #bb.tp_api.target.chunk.y bb.calculation = #bb.tp_api.target.coord.y bb.variable
scoreboard players operation #bb.tp_api.target.chunk.z bb.calculation = #bb.tp_api.target.coord.z bb.variable

execute if score #bb.tp_api.input.target.x bb.variable matches ..-1 run scoreboard players set #bb.tp_api.is_neg.x bb.calculation -1
execute if score #bb.tp_api.input.target.x bb.variable matches 0.. run scoreboard players set #bb.tp_api.is_neg.x bb.calculation 1
execute if score #bb.tp_api.input.target.y bb.variable matches ..-1 run scoreboard players set #bb.tp_api.is_neg.y bb.calculation -1
execute if score #bb.tp_api.input.target.y bb.variable matches 0.. run scoreboard players set #bb.tp_api.is_neg.y bb.calculation 1
execute if score #bb.tp_api.input.target.z bb.variable matches ..-1 run scoreboard players set #bb.tp_api.is_neg.z bb.calculation -1
execute if score #bb.tp_api.input.target.z bb.variable matches 0.. run scoreboard players set #bb.tp_api.is_neg.z bb.calculation 1

#x / 100 -> convert block coordinate to chunk coordinate [chunk = 100x100 blocks]
scoreboard players operation #bb.tp_api.target.chunk.x bb.calculation /= #100 bb.variable
scoreboard players operation #bb.tp_api.target.chunk.y bb.calculation /= #100 bb.variable
scoreboard players operation #bb.tp_api.target.chunk.z bb.calculation /= #100 bb.variable

# execute if score #bb.tp_api.is_neg.x bb.calculation matches -1 run scoreboard players add #bb.tp_api.target.chunk.x bb.calculation 10
# execute if score #bb.tp_api.is_neg.y bb.calculation matches -1 run scoreboard players add #bb.tp_api.target.chunk.y bb.calculation 10
# execute if score #bb.tp_api.is_neg.z bb.calculation matches -1 run scoreboard players add #bb.tp_api.target.chunk.z bb.calculation 10

#x % 10 -> convert chunk coordinate to relative chunk coordinate inside a block [block = 10x10 chunks]
# scoreboard players operation #bb.tp_api.target.chunk.x bb.calculation %= #10 bb.variable
# scoreboard players operation #bb.tp_api.target.chunk.y bb.calculation %= #10 bb.variable
# scoreboard players operation #bb.tp_api.target.chunk.z bb.calculation %= #10 bb.variable

#x % 100 -> convert block coordinate to relative block coordinate inside a chunk [chunk = 100x100 blocks]
scoreboard players operation #bb.tp_api.target.coord.x bb.calculation %= #100 bb.variable
scoreboard players operation #bb.tp_api.target.coord.y bb.calculation %= #100 bb.variable
scoreboard players operation #bb.tp_api.target.coord.z bb.calculation %= #100 bb.variable

# tellraw @a [{"text": "target.chunk: "}, {"score": {"name": "#bb.tp_api.target.chunk.x", "objective": "bb.calculation"}}, {"text": "/"}, {"score": {"name": "#bb.tp_api.target.chunk.y", "objective": "bb.calculation"}}, {"text": "/"}, {"score": {"name": "#bb.tp_api.target.chunk.z", "objective": "bb.calculation"}}]
# tellraw @a [{"text": "target.coord: "}, {"score": {"name": "#bb.tp_api.target.coord.x", "objective": "bb.calculation"}}, {"text": "/"}, {"score": {"name": "#bb.tp_api.target.coord.y", "objective": "bb.calculation"}}, {"text": "/"}, {"score": {"name": "#bb.tp_api.target.coord.z", "objective": "bb.calculation"}}]