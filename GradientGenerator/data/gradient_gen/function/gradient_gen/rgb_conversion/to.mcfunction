#Red
scoreboard players operation R rgb_conversion = decimal rgb_conversion
scoreboard players set val1 rgb_conversion 65536
scoreboard players operation R rgb_conversion /= val1 rgb_conversion

#Green
scoreboard players operation G rgb_conversion = decimal rgb_conversion
scoreboard players set val1 rgb_conversion 256
scoreboard players operation G rgb_conversion /= val1 rgb_conversion
scoreboard players operation G rgb_conversion %= val1 rgb_conversion

#Bue
scoreboard players operation B rgb_conversion = decimal rgb_conversion
scoreboard players operation B rgb_conversion %= val1 rgb_conversion