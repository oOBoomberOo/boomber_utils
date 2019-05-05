# Number System

## Int: Integer
Integer class is a default number system that come with the scoreboard system. this system only support integer value.

## Float4: Float
Float4 class is a normal number system but multiply by 1000. This mean that we can express decimal place up to 3 digits and it is used in most of the functions but this system can only store so much value until it ran out so whenever you are working with this system, please try to reduce the actual value you have to put inside this system.  
In the wiki context when you see a decimal point number you can assume that we're talking about Float4 so if I were to say `#bb.foo is in range of [-1.0, 1.0]` it would mean `#bb.foo is in the range of [-1000, 1000]` because Float4 is 1000x what it is.

## Bool: Boolean
Boolean class can have three possible value `-1`, `0`, `1`.  
`-1 = error`, `0 = false`, `1 = true`

## Entity: Entity
Well, this is not a number class. But rather a reference to entity which can sometime be useful.

## Vector
Vector class is a group of the other number system and only use in wiki context and have no actual implementation inside the game. Generally use because I'm too lazy to write all of them down at once.  
Vector can be express as `Vector<Class> [<variables>]` with `<variables>` being a list of character that represet `#bb.math.input.<character>`.  
So if I say `Vector<Float4> [x, y, z]` it'll translate to `[Float4 #bb.math.input.x, Float4 #bb.math.input.y, Float4 #bb.math.input.z]`