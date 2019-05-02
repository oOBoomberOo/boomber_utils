scoreboard players operation #👍.🔢.🌎.❎ bb.calculation = #bb.math.input.x bb.variable
scoreboard players operation #👍.🔢.🌎.✅ bb.calculation = #bb.math.input.y bb.variable
scoreboard players operation #👍.🔢.🌎.🔥 bb.calculation = #bb.math.input.angle bb.variable

scoreboard players operation #bb.math.input.angle bb.variable = #👍.🔢.🌎.🔥 bb.calculation
function boomber:math/cos
scoreboard players operation #👍.🔢.🌎.🐢 bb.calculation = #bb.math.result bb.variable

scoreboard players operation #bb.math.input.angle bb.variable = #👍.🔢.🌎.🔥 bb.calculation
function boomber:math/sin
scoreboard players operation #👍.🔢.🌎.🦃 bb.calculation = #bb.math.result bb.variable

# x₂ = x₁×cos(ϕ) - y₁×sin(ϕ)
# y₂ = y₁×cos(ϕ) + x₁×sin(ϕ)

scoreboard players operation #👍.🔢.🌎.🇦 bb.calculation = #👍.🔢.🌎.❎ bb.calculation
scoreboard players operation #👍.🔢.🌎.🇦 bb.calculation *= #👍.🔢.🌎.🐢 bb.calculation
scoreboard players operation #👍.🔢.🌎.🇦 bb.calculation /= #1000 bb.variable

scoreboard players operation #👍.🔢.🌎.🇧 bb.calculation = #👍.🔢.🌎.✅ bb.calculation
scoreboard players operation #👍.🔢.🌎.🇧 bb.calculation *= #👍.🔢.🌎.🦃 bb.calculation
scoreboard players operation #👍.🔢.🌎.🇧 bb.calculation /= #1000 bb.variable

scoreboard players operation #bb.math.result.x bb.variable = #👍.🔢.🌎.🇦 bb.calculation
scoreboard players operation #bb.math.result.x bb.variable -= #👍.🔢.🌎.🇧 bb.calculation

scoreboard players operation #👍.🔢.🌎.🇦 bb.calculation = #👍.🔢.🌎.✅ bb.calculation
scoreboard players operation #👍.🔢.🌎.🇦 bb.calculation *= #👍.🔢.🌎.🐢 bb.calculation
scoreboard players operation #👍.🔢.🌎.🇦 bb.calculation /= #1000 bb.variable

scoreboard players operation #👍.🔢.🌎.🇧 bb.calculation = #👍.🔢.🌎.❎ bb.calculation
scoreboard players operation #👍.🔢.🌎.🇧 bb.calculation *= #👍.🔢.🌎.🦃 bb.calculation
scoreboard players operation #👍.🔢.🌎.🇧 bb.calculation /= #1000 bb.variable

scoreboard players operation #bb.math.result.y bb.variable = #👍.🔢.🌎.🇦 bb.calculation
scoreboard players operation #bb.math.result.y bb.variable += #👍.🔢.🌎.🇧 bb.calculation

