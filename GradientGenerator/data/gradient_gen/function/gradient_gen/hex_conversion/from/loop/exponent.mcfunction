execute if score val1 hex_conversion matches 0 run return fail

scoreboard players set val3 hex_conversion 16
scoreboard players operation val2 hex_conversion *= val3 hex_conversion 
scoreboard players remove val1 hex_conversion 1
function gradient_gen:gradient_gen/hex_conversion/from/loop/exponent