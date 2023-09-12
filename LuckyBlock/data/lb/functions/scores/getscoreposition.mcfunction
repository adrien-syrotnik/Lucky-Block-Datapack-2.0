execute at @p as @a[scores={abandon=0}] unless score @s currentplayer = @p currentplayer if score @s timerun <= @p timerun run scoreboard players add @p Position 1
execute if score @s top1 <= @p timerun run scoreboard players add @p Position 1
execute if score @s top2 <= @p timerun run scoreboard players add @p Position 1
execute if score @s top3 <= @p timerun run scoreboard players add @p Position 1