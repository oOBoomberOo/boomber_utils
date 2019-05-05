# Functions

## <a href='#table' name='table'>Tables of Content</a>
- [cos θ, sin θ, tan θ](#sin-cos-tan)
- [cos⁻¹(n), sin⁻¹(n), tan⁻¹(n)](#asin-acos-atan)
- [atan2(x, y)](#atan2)
- [pow(b, e)](#pow)
- [sqrt(n)](#sqrt)
- [dist(p)](#dist)
- [Vector](#vector)
  - [subtract(p₁, p₂)](#vector-sub)
- [Coordinate](#coordinate)
  - [rotate(p, θ)](#coord-rotate)
  - [Rotate 3D](#coord-rotate3d)
    - [rotateX(p, θ)](#coord-rotate3d-x)
    - [rotateY(p, θ)](#coord-rotate3d-y)
    - [rotateZ(p, θ)](#coord-rotate3d-z)
  - [collide(p₁, p₂, w, h, d)](#coord-collide)
  - [collide_with_entity(p₁, p₂, w, h, d)](#coord-collide-entity)
## <a href='#table' name='sin-cos-tan'>cos θ, sin θ, tan θ</a>
Convert given angle into Float4 version of cos(θ), sin(θ), tan(θ).  
Location: `boomber:math/cos`, `boomber:math/sin`, `boomber:math/tan`  
Input: `Int #bb.math.input.angle`  
Return: `Float4 #bb.math.result`  
\* For tan(θ) at θ = 90ᴼ and θ = 270ᴼ will return 2147483647
```
scoreboard players set #bb.math.input.angle bb.variable 20
function boomber:math/cos

Return: #bb.math.result = 940 (Float4 0.940)

scoreboard players set #bb.math.input.angle bb.variable 20
function boomber:math/sin

Return: #bb.math.result = 342 (Float4 0.342)

scoreboard players set #bb.math.input.angle bb.variable 20
function boomber:math/tan

Return: #bb.math.result = 364 (Float4 0.364)
```

## <a href='#table' name='asin-acos-atan'>acos(n), asin(n), atan(n)</a>
Convert given Float4 into angle using inverse function of cos(θ), sin(θ), tan(θ).  
Location: `boomber:math/acos`, `boomber:math/asin`, `boomber:math/atan`  
Input: `Float4 #bb.math.input.number`: Float4 in the range of [-1, 1]  
Return: `Int #bb.math.result`: In the range of [0, 180]
```
scoreboard players set #bb.math.input.number bb.variable 1000 (Float4 1)
function boomber:math/acos

Return: #bb.math.result = 0 (Int 0)

scoreboard players set #bb.math.input.number bb.variable 1000 (Float4 1)
function boomber:math/asin

Return: #bb.math.result = 90 (Int 90)

scoreboard players set #bb.math.input.number bb.variable 1000 (Float4 1)
function boomber:math/atan

Return: #bb.math.result = 45 (Int 45)
```

## <a href='#table' name='atan2'>atan2(x, y)</a>
A modified atan(n) function. This function cover the entire unit circle unlike atan() which only cover angle in range between [-90, 90]  
Location: `boomber:math/atan2`  
Input:  
- `Float4 #bb.math.input.x`: adjacent side length  
- `Float4 #bb.math.input.y`: opposite side length 

Return: `Int #bb.math.result`: In range [-180, 180]  
\* If (x, y) = (0, 0) this function will return `#bb.math.result = 0` and `#bb.math.success` of bb.success objective = `-1`
```
scoreboard players set #bb.math.input.x bb.variable 500 (Float4 0.5)
scoreboard players set #bb.math.input.y bb.variable 500 (Float4 0.5)
function boomber:math/atan2

Return: #bb.math.result = 1000 (Float4 1)
```

## <a href='#table' name='pow'>pow(b, e)</a>
Power function such as `2⁵`, `10²`, `0.5²`   
Location: `boomber:math/power`  
Input:  
- `Float4 #bb.math.input.base`: base of the function
- `Int #bb.math.input.exponent`: exponent of the function 

Return: `Float4 #bb.math.result`
```
scoreboard players set #bb.math.input.base bb.variable 500 (Float4 0.5)
scoreboard players set #bb.math.input.exponent bb.variable 2 (Int 2)
function boomber:math/power

Return: #bb.math.result = 250 (Float4 0.25)
```

## <a href='#table' name='sqrt'>sqrt(n)</a>
Square root function. Due to how the function is structure the given `n` will be multiply by 1000 inside the function itself so if `n` is already very big there is a chance of minecraft return `2147483647` try to keep `n` as low as possible.  
Location: `boomber:math/sqrt`  
Input: `Float4 #bb.math.input.number`  
Return: `Float4 #bb.math.result`
```
scoreboard players set #bb.math.input.number bb.variable 2000 (Float4 2)
function boomber:math/sqrt

Return: #bb.math.result = 1414 (Float4 √2)
```

## <a href='#table' name='dist'>dist(p)</a>
Calculate distance from a point to (0, 0, 0). For finding a distance between two points you have to subtract one point `(A)` from another point `(B)` using `vector.subtract(p₁, p₂)` function.  
Location: `boomber:math/function/dist`  
Input: `Vector<Float4> [x, y, z]`: location of a point in Float4  
Return: `Float4 #bb.math.result`
```
scorebord players set #bb.math.input.x bb.variable 1000 (Float4 1)
scorebord players set #bb.math.input.y bb.variable 1000 (Float4 1)
scorebord players set #bb.math.input.z bb.variable 1000 (Float4 1)
function boomber:math/function/dist

Return: #bb.math.result = 1732 (Float4 √3)
```

## <a href='#table' name='vector'>Vector</a>
### <a href='#vector' name='vector-sub'>subtract(p₁, p₂)</a>
Subtract one vector with another vector.  
Location: `boomber:math/vector/subtract`  
Input:  
- `Vector<Any> [x, y, z]`
- `Vector<Any> [i, j, k]`

Return: `Any #bb.math.result.x, Any #bb.math.result.y, Any #bb.math.result.z]`  
```
scoreboard players set #bb.math.input.x bb.variable 1000 (Float4 1)
scoreboard players set #bb.math.input.y bb.variable 2500 (Float4 2.5)
scoreboard players set #bb.math.input.z bb.variable 5000 (Float4 5)
Vector<Float4> [x, y, z] = (1, 2.5, 5)

scoreboard players set #bb.math.input.i bb.variable 500 (Float4 0.5)
scoreboard players set #bb.math.input.j bb.variable 1000 (Float4 1)
scoreboard players set #bb.math.input.k bb.variable 4000 (Float4 4)
Vector<Float4> [i, j, k] = (0.5, 1, 4)

function boomber:math/vector/subtract

Return: #bb.math.result.x = 1-0.5 = 0.5
        #bb.math.result.y = 2.5-1 = 1.5
        #bb.math.result.z = 5-4 = 1
```

## <a href='#table' name='float4'>Float4</a>
### <a href='#float4' name='float4-mult'>mult(a, b)</a>
Multiply float4 number class.  
Location: `boomber:math/float4/mult`  
Input:  
- `Float4 a`
- `Float4 b`

Return: `Float4 #bb.math.result`
```
scoreboard players set #bb.math.input.a bb.variable 10000 (Float4 10)
scoreboard players set #bb.math.input.b bb.variable 500 (Float4 0.5)
function boomber:math/float4/mult

Return #bb.math.result = 5000 (Float4 5)
```
### <a href='#float4' name='float4-div'>div(a, b)</a>
Divide float4 number class.  
Location: `boomber:math/float4/div`  
Input:  
- `Float4 a`
- `Float4 b`

Return: `Float4 #bb.math.result`
```
scoreboard players set #bb.math.input.a bb.variable 10000 (Float4 10)
scoreboard players set #bb.math.input.b bb.variable 500 (Float4 0.5)
function boomber:math/float4/div

Return #bb.math.result = 20000 (Float4 20)
```

## <a href='#table' name='coordinate'>Coordinate</a>
Useful function about coordinate.

### <a href='#coordinate' name='coord-rotate'>rotate(p, θ)</a>
Rotate a point in 2D system.  
Location: `boomber:math/coordinate/rotate`  
Input:  
- `Vector<Float4> [x, y]`: a location of a point  
- `Int #bb.math.input.angle`: rotated angle  

Return: `Vector<Float4> [result.x, result.y]`: rotated coordinate
```
scoreboard players set #bb.math.input.x bb.variable 1000 (Float4 1)
scoreboard players set #bb.math.input.y bb.variable 1000 (Float4 1)
scoreboard players set #bb.math.input.angle bb.variable 45 (Int 45)
function boomber:math/coordinate/rotate

Return: #bb.math.result.x = 1×cos(45) - 1×sin(45) = 707 - 707 = 0 (Float4 0)
        #bb.math.result.y = 1×cos(45) + 1×sin(45) = 707 + 707 = 1414 (Float4 √2)
```

### <a href='#coordinate' name='coord-rotate3d'>Rotate 3D</a>
Unlike 2D system, 3D system require more than one axis to rotate a point so we have to split them into 3 functions
#### <a href='coord-rotate3d' name='coord-rotate3d-x'>rotateX(p, θ)</a>
Rotate a point in 3D system along the X axis.  
Location: `boomber:math/coordinate/rotate3d/x`  
Input:  
- `Vector<Float4> [x, y, z]`: a location of a point  
- `Int #bb.math.input.angle`: rotated angle

Return: `Vector<Float4> [result.x, result.y, result.z]`: rotated coordinate  
```
scoreboard players set #bb.math.input.x bb.variable 1000 (Float4 1)
scoreboard players set #bb.math.input.y bb.variable 2000 (Float4 2)
scoreboard players set #bb.math.input.z bb.variable 3000 (Float4 3)
scoreboard players set #bb.math.input.angle bb.variable 90 (Int 90)
function boomber:math/coordinate/rotate3d/x

Return:
 #bb.math.result.x = 1 = 1000 (Float4 1)
 #bb.math.result.y = 2×cos(90) - 3×sin(90) = 0 - 3000 = -3000 (Float4 -3)
 #bb.math.result.z = 3×cos(90) + 2×sin(90) = 0 + 2000 = 2000 (Float4 2)
```
#### <a href='coord-rotate3d' name='coord-rotate3d-y'>rotateY(p, θ)</a>
Rotate a point in 3D system along the Y axis.  
Location: `boomber:math/coordinate/rotate3d/y`  
Input:  
- `Vector<Float4> [x, y, z]`: a location of a point  
- `Int #bb.math.input.angle`: rotated angle

Return: `Vector<Float4> [result.x, result.y, result.z]`: rotated coordinate  
```
scoreboard players set #bb.math.input.x bb.variable 1000 (Float4 1)
scoreboard players set #bb.math.input.y bb.variable 2000 (Float4 2)
scoreboard players set #bb.math.input.z bb.variable 3000 (Float4 3)
scoreboard players set #bb.math.input.angle bb.variable 90 (Int 90)
function boomber:math/coordinate/rotate3d/y

Return:
 #bb.math.result.x = 1×cos(90) + 3×sin(90) = 0 + 3000 = 3000 (Float4 3)
 #bb.math.result.y = 2 = 2000 (Float4 2)
 #bb.math.result.z = 3×cos(90) - 1×sin(90) = 0 - 1000 = -1000 (Float4 -1)
```
#### <a href='coord-rotate3d' name='coord-rotate3d-z'>rotateZ(p, θ)</a>
Rotate a point in 3D system along the Z axis.  
Location: `boomber:math/coordinate/rotate3d/z`  
Input:  
- `Vector<Float4> [x, y, z]`: a location of a point  
- `Int #bb.math.input.angle`: rotated angle

Return: `Vector<Float4> [result.x, result.y, result.z]`: rotated coordinate  
```
scoreboard players set #bb.math.input.x bb.variable 1000 (Float4 1)
scoreboard players set #bb.math.input.y bb.variable 2000 (Float4 2)
scoreboard players set #bb.math.input.z bb.variable 3000 (Float4 3)
scoreboard players set #bb.math.input.angle bb.variable 90 (Int 90)
function boomber:math/coordinate/rotate3d/z

Return:
 #bb.math.result.x = 1×cos(90) - 2×sin(90) = 0 - 2000 = 2000 (Float4 -2)
 #bb.math.result.y = 2×cos(90) + 1×sin(90) = 0 + 1000 = 1000 (Float4 1)
 #bb.math.result.z = 3 = 3000 (Float4 3)
```

### <a href='#coordinate' name='coord-collide'>collide(p₁, p₂, h, w, d)</a>
Check if a point is colliding with another point.  
Location: `boomber:math/coordinate/collide`  
Input:  
- `Vector<Float4> [x, y, z]`: location of point 1
- `Vector<Float4> [i, j, k]`: location of point 2
- `Vector<Float4> [h, w, d]`: hitbox size

Result: `Bool #bb.math.result`  
```
scoreboard players players set #bb.math.input.x bb.variable 0
scoreboard players players set #bb.math.input.y bb.variable 0
scoreboard players players set #bb.math.input.z bb.variable 0

scoreboard players players set #bb.math.input.i bb.variable 1000
scoreboard players players set #bb.math.input.j bb.variable 0
scoreboard players players set #bb.math.input.k bb.variable 0

scoreboard players players set #bb.math.input.w bb.variable 1200
scoreboard players players set #bb.math.input.h bb.variable 100
scoreboard players players set #bb.math.input.d bb.variable 100

function boomber:math/coordinate/collide

Return: #bb.math.result = true
```

### <a href='#coordinate' name='coord-collide-entity'>collide_with_entity(p₁, p₂, h, w, d)</a>
Check if entity is colliding with a point.  
Location: `boomber:math/coordinate/collide_with_entity`  
Input:  
- `Entity p₁`: entity reference
- `Vector<Float4> [x, y, z]`: location of a point
- `Vector<Float4> [h, w, d]`: hitbox size

Result: `entity that collided with a point will get tagged "boomber.math.collided"`  
```
scoreboard players players set #bb.math.input.x bb.variable 0
scoreboard players players set #bb.math.input.y bb.variable 0
scoreboard players players set #bb.math.input.z bb.variable 0

scoreboard players players set #bb.math.input.w bb.variable 1000
scoreboard players players set #bb.math.input.h bb.variable 1000
scoreboard players players set #bb.math.input.d bb.variable 1000

execute as @e[tag=boomber.foo] run function boomber:math/coordinate/collide_with_entity

Return: Entities p₁ that collide with the point will get tagged "boomber.math.collided"
```