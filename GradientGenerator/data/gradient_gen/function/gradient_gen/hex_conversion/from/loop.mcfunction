$data modify storage gradient_gen:hex_conversion temp.curChar set string storage gradient_gen:hex_conversion input $(min) $(max)
execute if data storage gradient_gen:hex_conversion temp{curChar:"0"} run scoreboard players set num hex_conversion 0
execute if data storage gradient_gen:hex_conversion temp{curChar:"1"} run scoreboard players set num hex_conversion 1
execute if data storage gradient_gen:hex_conversion temp{curChar:"2"} run scoreboard players set num hex_conversion 2
execute if data storage gradient_gen:hex_conversion temp{curChar:"3"} run scoreboard players set num hex_conversion 3
execute if data storage gradient_gen:hex_conversion temp{curChar:"4"} run scoreboard players set num hex_conversion 4
execute if data storage gradient_gen:hex_conversion temp{curChar:"5"} run scoreboard players set num hex_conversion 5
execute if data storage gradient_gen:hex_conversion temp{curChar:"6"} run scoreboard players set num hex_conversion 6
execute if data storage gradient_gen:hex_conversion temp{curChar:"7"} run scoreboard players set num hex_conversion 7
execute if data storage gradient_gen:hex_conversion temp{curChar:"8"} run scoreboard players set num hex_conversion 8
execute if data storage gradient_gen:hex_conversion temp{curChar:"9"} run scoreboard players set num hex_conversion 9
execute if data storage gradient_gen:hex_conversion temp{curChar:"A"} run scoreboard players set num hex_conversion 10
execute if data storage gradient_gen:hex_conversion temp{curChar:"B"} run scoreboard players set num hex_conversion 11
execute if data storage gradient_gen:hex_conversion temp{curChar:"C"} run scoreboard players set num hex_conversion 12
execute if data storage gradient_gen:hex_conversion temp{curChar:"D"} run scoreboard players set num hex_conversion 13
execute if data storage gradient_gen:hex_conversion temp{curChar:"E"} run scoreboard players set num hex_conversion 14
execute if data storage gradient_gen:hex_conversion temp{curChar:"F"} run scoreboard players set num hex_conversion 15

scoreboard players operation val1 hex_conversion = length hex_conversion
scoreboard players operation val1 hex_conversion -= max hex_conversion
scoreboard players set val2 hex_conversion 1
function gradient_gen:gradient_gen/hex_conversion/from/loop/exponent

scoreboard players operation num hex_conversion *= val2 hex_conversion
scoreboard players operation total hex_conversion += num hex_conversion

scoreboard players remove min hex_conversion 1
scoreboard players remove max hex_conversion 1


execute store result storage gradient_gen:hex_conversion temp.min int 1 run scoreboard players get min hex_conversion
execute store result storage gradient_gen:hex_conversion temp.max int 1 run scoreboard players get max hex_conversion



execute if score min hex_conversion matches 0.. run function gradient_gen:gradient_gen/hex_conversion/from/loop with storage gradient_gen:hex_conversion temp