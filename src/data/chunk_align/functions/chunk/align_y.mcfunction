# from chunk_align:align
# @s = armor_stand

execute store result score @s __pos run data get entity @s Pos[1]
scoreboard players operation @s __pos %= 16 const
execute rotated 0 -90 if score @s __pos > 0 const positioned ^ ^ ^-1 run function chunk_align:chunk/recursion
