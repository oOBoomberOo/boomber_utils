# [Math API](#math_api)
Contain many mathematic functions such as sin(), acos(), pow(), etc.

## <a href="#table" name="table">Table of contents</a>
- [Convention](#convention)
- [Operation](#operation)
  - [pow()](#pow)
- [Trigonometry](#trigonometry)
  - [sin()](#sin)
  - [cos()](#cos)
  - [tan()](#tan)
  - [asin()](#asin)
  - [acos()](#acos)
  - [atan()](#atan)
  - [atan2()](#atan2)

## <a href="#table" name="convention">Convention</a>
* When you see a string that start with "#" such as `#bb.math.foo` you can always assume that this is a scoreboard selector of objective `bb.variable`.  
So if I say `#bb.math.foo = 42` it'll translate to `/scoreboard players set #bb.math.foo bb.variable 42`
* `#bb.math.result` will **always** be where the result of math API be, unless explicitly said so.

## <a href="#table" name="operation">Operation</a>

### <a href="#operation" name="pow">pow()</a>
Power function of an integer, i.e. `2^8`  
Function: `boomber:math/power`  
Input:  
`#bb.math.input.base`: base of the operation  
`#bb.math.input.power`: exponent of the operation  
Return: value of `base^power`
```
scoreboard players set #bb.math.input.base bb.variable 2
scoreboard players set #bb.math.input.power bb.variable 8
function boomber:math/power

Return: #bb.math.result = 256
```

## <a href="#table" name="trigonometry">Trigonometry</a>

### <a href="#trigonometry" name="sin">sin()</a>
Sine function  
Function: `boomber:math/sin`    
Input: `#bb.math.input.angle`: an angle in degree  
Return: value of `sin(θ) * 1000`  
```
scoreboard players set #bb.math.input.angle bb.variable 90
function boomber:math/sin

Return: #bb.math.result = 1000
```

### <a href="#trigonometry" name="cos">cos()</a>
Cosine function  
Function: `boomber:math/cos`    
Input: `#bb.math.input.angle`: an angle in degree  
Return: value of `cos(θ) * 1000`
```
scoreboard players set #bb.math.input.angle bb.variable 90
function boomber:math/cos

Return: #bb.math.result = 0
```

### <a href="#trigonometry" name="tan">tan()</a>
Tangent function  
Function: `boomber:math/tan`    
Input: `#bb.math.input.angle`: an angle in degree  
Return: value of `tan(θ) * 1000`  
\* at angle 90 and 270 degrees will return 2147483648  
```
scoreboard players set #bb.math.input.angle bb.variable 45
function boomber:math/tan

Return: #bb.math.result = 1000
```

### <a href="#trigonometry" name="asin">asin()</a>
Inverse sine function  
Functino: `boomber:math/asin`    
Input: `#bb.math.input.number`: integer in range [-1000, 1000]  
Return: value of `asin(number/1000)` in degrees (range [-90, 90])  
\* Anything beyond range [-1000, 1000] will return `#bb.math.result = 0`
```
scoreboard players set #bb.math.input.number bb.variable 707
function boomber:math/asin

Return: #bb.math.result = 45
```

### <a href="#trigonometry" name="acos">acos()</a>
Inverse cosine function   
Function: `boomber:math/acos`    
Input: `#bb.math.input.number`: integer in range [-1000, 1000]  
Return: value of `asin(number/1000)` in degrees (range [0, 180])  
\* Anything beyond range [-1000, 1000] will return `#bb.math.result = 0`  
```
scoreboard players set #bb.math.input.number bb.variable -1000
function boomber:math/acos

Return: #bb.math.result = 180
```

### <a href="#trigonometry" name="atan">atan()</a>
Inverse tangent function  
Function: `boomber:math/atan`  
Input: `#bb.math.input.number`: integer in range [-2147483648, 2147483648]  
Return: value of `atan(number/1000)` in degrees (range [-90, 90])  
\* `#bb.math.input.number` is a ratio of `y/x`  
\** because minecraft doesn't support floating point number you need to multiply `y * 1000` and then do `y/x`
```
#x = 50
#y = 50
#1000 = 1000

scoreboard players operation #bb.math.input.number bb.variable = #y bb.variable
scoreboard players operation #bb.math.input.number bb.variable *= #1000 bb.variable
scoreboard players operation #bb.math.input.number bb.variable /= #x bb.variable

//#bb.math.input.number is currently equal to 1000

function boomber:math/atan

Return: #bb.math.result = 45
```

### <a href="#trigonometry" name="atan2">atan2()</a>
Inverse tangent function with an output in range [-180, 180]  
Function: `boomber:math/atan2`  
Input:  
`#bb.math.input.x`: in unit circle this is the line at θ = 0  
`#bb.math.input.y`: in unit circle this is the line at θ = 90  
Return: value of `atan2(x, y)` in degrees (range [-180, 180])  
\* if x = 0 & y > 0 will return 90 degrees  
\* if x = 0 & y < 0 will return -90 degrees  
```
atan():
#x = -50
#y = 50
#bb.math.input.number = #y*1000/#x = -1000

function boomber:math/atan

Return: #bb.math.result = -45 which is not true if we look at where (-50, 50) is.

atan2():
#x = -50
#y = 50
#bb.math.input.x = #x = -50
#bb.math.input.y = #y = 50

function boomber:math/atan2

Return: #bb.math.result = 135
```