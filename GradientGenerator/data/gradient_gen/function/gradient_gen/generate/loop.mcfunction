$data modify storage gradient_gen:gradient_gen temp.curChar set string storage gradient_gen:gradient_gen input.string $(min) $(max)

scoreboard players set multiplier gradient_gen 1000

#t
scoreboard players operation t gradient_gen = min gradient_gen
scoreboard players operation n gradient_gen = length gradient_gen
scoreboard players remove n gradient_gen 1
scoreboard players operation t gradient_gen *= multiplier gradient_gen
scoreboard players operation t gradient_gen /= n gradient_gen


#Red
scoreboard players operation R gradient_gen = endR gradient_gen
scoreboard players operation R gradient_gen -= startR gradient_gen
scoreboard players operation R gradient_gen *= t gradient_gen
scoreboard players operation val2 gradient_gen = startR gradient_gen
scoreboard players operation val2 gradient_gen *= multiplier gradient_gen
scoreboard players operation R gradient_gen += val2 gradient_gen


#Green
scoreboard players operation G gradient_gen = endG gradient_gen
scoreboard players operation G gradient_gen -= startG gradient_gen
scoreboard players operation G gradient_gen *= t gradient_gen
scoreboard players operation val2 gradient_gen = startG gradient_gen
scoreboard players operation val2 gradient_gen *= multiplier gradient_gen
scoreboard players operation G gradient_gen += val2 gradient_gen


#Blue
scoreboard players operation B gradient_gen = endB gradient_gen
scoreboard players operation B gradient_gen -= startB gradient_gen
scoreboard players operation B gradient_gen *= t gradient_gen
scoreboard players operation val2 gradient_gen = startB gradient_gen
scoreboard players operation val2 gradient_gen *= multiplier gradient_gen
scoreboard players operation B gradient_gen += val2 gradient_gen



scoreboard players operation R gradient_gen /= multiplier gradient_gen
scoreboard players operation G gradient_gen /= multiplier gradient_gen
scoreboard players operation B gradient_gen /= multiplier gradient_gen


scoreboard players operation R rgb_conversion = R gradient_gen
scoreboard players operation G rgb_conversion = G gradient_gen
scoreboard players operation B rgb_conversion = B gradient_gen


function gradient_gen:gradient_gen/rgb_conversion/from

execute store result storage gradient_gen:hex_conversion input int 1 run scoreboard players get decimal rgb_conversion
function gradient_gen:gradient_gen/hex_conversion/to
data modify storage gradient_gen:gradient_gen temp.color set from storage gradient_gen:hex_conversion result

function gradient_gen:gradient_gen/generate/loop/construct with storage gradient_gen:gradient_gen temp
function gradient_gen:gradient_gen/generate/loop/add with storage gradient_gen:gradient_gen temp

scoreboard players add min gradient_gen 1
scoreboard players add max gradient_gen 1


execute store result storage gradient_gen:gradient_gen temp.max int 1 run scoreboard players get max gradient_gen
execute store result storage gradient_gen:gradient_gen temp.min int 1 run scoreboard players get min gradient_gen



execute unless score max gradient_gen > length gradient_gen run function gradient_gen:gradient_gen/generate/loop with storage gradient_gen:gradient_gen temp