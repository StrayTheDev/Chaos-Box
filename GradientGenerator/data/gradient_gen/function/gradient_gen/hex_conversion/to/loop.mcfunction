execute if score val1 hex_conversion matches 0 run return fail

scoreboard players operation val3 hex_conversion = val1 hex_conversion
scoreboard players operation val3 hex_conversion %= val2 hex_conversion


execute if score val3 hex_conversion matches 0..9 store result storage gradient_gen:hex_conversion temp.toPrepend int 1 run scoreboard players get val3 hex_conversion

execute if score val3 hex_conversion matches 10 run data modify storage gradient_gen:hex_conversion temp.toPrepend set value "A"
execute if score val3 hex_conversion matches 11 run data modify storage gradient_gen:hex_conversion temp.toPrepend set value "B"
execute if score val3 hex_conversion matches 12 run data modify storage gradient_gen:hex_conversion temp.toPrepend set value "C"
execute if score val3 hex_conversion matches 13 run data modify storage gradient_gen:hex_conversion temp.toPrepend set value "D"
execute if score val3 hex_conversion matches 14 run data modify storage gradient_gen:hex_conversion temp.toPrepend set value "E"
execute if score val3 hex_conversion matches 15 run data modify storage gradient_gen:hex_conversion temp.toPrepend set value "F"

function gradient_gen:gradient_gen/hex_conversion/to/loop/prepend with storage gradient_gen:hex_conversion temp

scoreboard players operation val1 hex_conversion /= val2 hex_conversion

function gradient_gen:gradient_gen/hex_conversion/to/loop