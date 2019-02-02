execute as @s if score #bb.tp_api.cpos bb.variable matches ..0 run function boomber:teleportation_api/setup/normal_position
execute as @s if score #bb.tp_api.cpos bb.variable matches 1.. run function boomber:teleportation_api/setup/custom_position

scoreboard players operation #bb.tp_api.pos.coord.x bb.variable = #bb.tp_api.pos.coord.x bb.variable
scoreboard players operation #bb.tp_api.pos.coord.y bb.variable = #bb.tp_api.pos.coord.y bb.variable
scoreboard players operation #bb.tp_api.pos.coord.z bb.variable = #bb.tp_api.pos.coord.z bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.x bb.variable = #bb.tp_api.pos.coord.x bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.y bb.variable = #bb.tp_api.pos.coord.y bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.z bb.variable = #bb.tp_api.pos.coord.z bb.variable
scoreboard players operation #bb.tp_api.pos.region.x bb.variable = #bb.tp_api.pos.coord.x bb.variable
scoreboard players operation #bb.tp_api.pos.region.z bb.variable = #bb.tp_api.pos.coord.z bb.variable

scoreboard players operation #bb.tp_api.pos.coord.x bb.calculation = #bb.tp_api.pos.coord.x bb.variable
scoreboard players operation #bb.tp_api.pos.coord.y bb.calculation = #bb.tp_api.pos.coord.y bb.variable
scoreboard players operation #bb.tp_api.pos.coord.z bb.calculation = #bb.tp_api.pos.coord.z bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.x bb.calculation = #bb.tp_api.pos.chunk.x bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.y bb.calculation = #bb.tp_api.pos.chunk.y bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.z bb.calculation = #bb.tp_api.pos.chunk.z bb.variable
scoreboard players operation #bb.tp_api.pos.region.x bb.calculation = #bb.tp_api.pos.region.x bb.variable
scoreboard players operation #bb.tp_api.pos.region.z bb.calculation = #bb.tp_api.pos.region.z bb.variable


#x / 512 -> convert block coordinate to region coordinate [region = 512x512 blocks]
scoreboard players operation #bb.tp_api.pos.region.x bb.calculation /= #512 bb.variable
scoreboard players operation #bb.tp_api.pos.region.z bb.calculation /= #512 bb.variable

#x / 16 -> convert block coordinate to chunk coordinate [chunk = 16x16 blocks]
scoreboard players operation #bb.tp_api.pos.chunk.x bb.calculation /= #16 bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.y bb.calculation /= #16 bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.z bb.calculation /= #16 bb.variable

#x % 32 -> convert chunk coordinate to relative chunk coordinate inside a region [region = 32x32 chunks]
scoreboard players operation #bb.tp_api.pos.chunk.x bb.calculation %= #32 bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.y bb.calculation %= #32 bb.variable
scoreboard players operation #bb.tp_api.pos.chunk.z bb.calculation %= #32 bb.variable

#x % 16 -> convert block coordinate to relative block coordinate inside a chunk [chunk = 16x16 blocks]
scoreboard players operation #bb.tp_api.pos.coord.x bb.calculation %= #16 bb.variable
scoreboard players operation #bb.tp_api.pos.coord.y bb.calculation %= #16 bb.variable
scoreboard players operation #bb.tp_api.pos.coord.z bb.calculation %= #16 bb.variable


scoreboard players operation #bb.tp_api.target.coord.x bb.variable = #bb.tp_api.input.target.x bb.variable
scoreboard players operation #bb.tp_api.target.coord.y bb.variable = #bb.tp_api.input.target.y bb.variable
scoreboard players operation #bb.tp_api.target.coord.z bb.variable = #bb.tp_api.input.target.z bb.variable
scoreboard players operation #bb.tp_api.target.coord.x bb.calculation = #bb.tp_api.target.coord.x bb.variable
scoreboard players operation #bb.tp_api.target.coord.y bb.calculation = #bb.tp_api.target.coord.y bb.variable
scoreboard players operation #bb.tp_api.target.coord.z bb.calculation = #bb.tp_api.target.coord.z bb.variable
scoreboard players operation #bb.tp_api.target.chunk.x bb.calculation = #bb.tp_api.target.coord.x bb.variable
scoreboard players operation #bb.tp_api.target.chunk.y bb.calculation = #bb.tp_api.target.coord.y bb.variable
scoreboard players operation #bb.tp_api.target.chunk.z bb.calculation = #bb.tp_api.target.coord.z bb.variable
scoreboard players operation #bb.tp_api.target.region.x bb.calculation = #bb.tp_api.target.coord.x bb.variable
scoreboard players operation #bb.tp_api.target.region.z bb.calculation = #bb.tp_api.target.coord.z bb.variable

#x / 512 -> convert block coordinate to region coordinate [region = 512x512 blocks]
scoreboard players operation #bb.tp_api.target.region.x bb.calculation /= #512 bb.variable
scoreboard players operation #bb.tp_api.target.region.z bb.calculation /= #512 bb.variable

#x / 16 -> convert block coordinate to chunk coordinate [chunk = 16x16 blocks]
scoreboard players operation #bb.tp_api.target.chunk.x bb.calculation /= #16 bb.variable
scoreboard players operation #bb.tp_api.target.chunk.y bb.calculation /= #16 bb.variable
scoreboard players operation #bb.tp_api.target.chunk.z bb.calculation /= #16 bb.variable

#x % 32 -> convert chunk coordinate to relative chunk coordinate inside a region [region = 32x32 chunks]
scoreboard players operation #bb.tp_api.target.chunk.x bb.calculation %= #32 bb.variable
scoreboard players operation #bb.tp_api.target.chunk.y bb.calculation %= #32 bb.variable
scoreboard players operation #bb.tp_api.target.chunk.z bb.calculation %= #32 bb.variable

#x % 16 -> convert block coordinate to relative block coordinate inside a chunk [chunk = 16x16 blocks]
scoreboard players operation #bb.tp_api.target.coord.x bb.calculation %= #16 bb.variable
scoreboard players operation #bb.tp_api.target.coord.y bb.calculation %= #16 bb.variable
scoreboard players operation #bb.tp_api.target.coord.z bb.calculation %= #16 bb.variable
