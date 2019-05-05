# Math API
Contain many useful math functions such as sin(), cos(), sqrt() and more.

## Conventions
Due to the nature of a confusing minecraft's scoreboard there have to be a general agreement within the datapack and here are list of convention that I am using in this module.
1) String that start with `#` should always be associate with scoreboard objective `bb.variable`. For example `#bb.foo` will translate to selector `#bb.foo` of objective `bb.variable` or `#bb.bar = 42` will translate to `scoreboard players set #bb.bar bb.variable 42`
2) Unless say so explicitly, any "returnable function" will always return its value to `#bb.math.result` scoreboard

## Number System
To implement most of the math functions it is a requirement for fractional number to exists. Right now there are 2 number system being implemented into this datapack. You can find these two inside `Number System` tab.

## Functions
Function is a math operation that take a set of number and spit out another set of number.  
For more information about functions checkout `Functions` tab.