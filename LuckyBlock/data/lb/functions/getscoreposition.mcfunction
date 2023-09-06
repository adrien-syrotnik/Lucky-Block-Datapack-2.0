execute at @p as @a if score @s[distance=1.1..] timerun <= @p timerun run scoreboard players add @p Position 1
execute if score @s top1 <= @p timerun run scoreboard players add @p Position 1
execute if score @s top2 <= @p timerun run scoreboard players add @p Position 1
execute if score @s top2 <= @p timerun run scoreboard players add @p Position 1