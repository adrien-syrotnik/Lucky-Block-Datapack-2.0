scoreboard players set @a Position 1
execute as @a at @a if score @s[distance=1..] breakLB >= @p breakLB run scoreboard players add @s Position 1

schedule function scoreboard:position 1s