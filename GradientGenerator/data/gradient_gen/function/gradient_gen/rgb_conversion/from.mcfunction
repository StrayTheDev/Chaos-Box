
#Red
scoreboard players set val1 rgb_conversion 65536
scoreboard players operation R rgb_conversion *= val1 rgb_conversion

#Green
scoreboard players set val1 rgb_conversion 256
scoreboard players operation G rgb_conversion *= val1 rgb_conversion

#Decimal
scoreboard players operation decimal rgb_conversion = R rgb_conversion
scoreboard players operation decimal rgb_conversion += G rgb_conversion
scoreboard players operation decimal rgb_conversion += B rgb_conversion