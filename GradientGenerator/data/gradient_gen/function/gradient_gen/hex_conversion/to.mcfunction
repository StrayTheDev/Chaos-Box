data modify storage gradient_gen:hex_conversion result set value ""
data modify storage gradient_gen:hex_conversion temp.string set from storage gradient_gen:hex_conversion result


execute store result score val1 hex_conversion run data get storage gradient_gen:hex_conversion input
scoreboard players set val2 hex_conversion 16


function gradient_gen:gradient_gen/hex_conversion/to/loop

data modify storage gradient_gen:hex_conversion result set from storage gradient_gen:hex_conversion temp.string
scoreboard players reset val1 hex_conversion
scoreboard players reset va2 hex_conversion
scoreboard players reset val3 hex_conversion
data remove storage gradient_gen:hex_conversion temp