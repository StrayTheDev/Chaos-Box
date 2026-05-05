data modify storage gradient_gen:hex_conversion result set value ""
data modify storage gradient_gen:hex_conversion input set string storage gradient_gen:hex_conversion input
execute store result score length hex_conversion run data get storage gradient_gen:hex_conversion input

scoreboard players operation min hex_conversion = length hex_conversion
scoreboard players remove min hex_conversion 1
scoreboard players operation max hex_conversion = min hex_conversion
scoreboard players add max hex_conversion 1

scoreboard players set total hex_conversion 0

execute store result storage gradient_gen:hex_conversion temp.min int 1 run scoreboard players get min hex_conversion
execute store result storage gradient_gen:hex_conversion temp.max int 1 run scoreboard players get max hex_conversion
function gradient_gen:gradient_gen/hex_conversion/from/loop with storage gradient_gen:hex_conversion temp
execute store result storage gradient_gen:hex_conversion result int 1 run scoreboard players get total hex_conversion

scoreboard players reset val1 hex_conversion
scoreboard players reset val2 hex_conversion
scoreboard players reset val3 hex_conversion
scoreboard players reset length hex_conversion
scoreboard players reset max hex_conversion
scoreboard players reset min hex_conversion
scoreboard players reset num hex_conversion
data remove storage gradient_gen:hex_conversion temp