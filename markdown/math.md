# Math API
Contain many useful math functions such as sin(), cos(), sqrt() and more.

## Conventions
Due to the nature of a confusing Minecraft's scoreboard there has to be a general agreement within the datapack and here is a list of the convention that I am using in this module.
1) String that starts with `#` should always be associated with scoreboard objective `bb.variable`. For example `#bb.foo` will translate to selector `#bb.foo` of objective `bb.variable` or `#bb.bar = 42` will translate to `scoreboard players set #bb.bar bb.variable 42`
2) Unless say so explicitly, any "returnable function" will always return its value to `#bb.math.result` scoreboard

## [Number System](https://github.com/oOBoomberOo/boomber_utils/wiki/math_api.number)
To implement most of the math functions it is a requirement for a fractional number to exists. Right now there are 2 number system being implemented into this datapack. You can find these two inside `Number System` tab.

## [Functions](https://github.com/oOBoomberOo/boomber_utils/wiki/math_api.function)
Function is a math operation that takes a set of number and spits out another set of number.  
For more information about functions checkout `Functions` tab.