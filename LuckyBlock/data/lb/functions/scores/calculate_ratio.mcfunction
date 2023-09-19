scoreboard players set 100 number 100
#calculate the luck ratio from the number of luck(lbluck) and unluck(lbunluck)
#multiply by 1000 to get a percentage
scoreboard players operation luck lbluck = @s lbluck
scoreboard players operation luck lbluck *= 100 number

scoreboard players operation unluck lbunluck = @s lbunluck
scoreboard players operation unluck lbunluck *= 100 number

scoreboard players operation @s ratioLuck = @s lbluck
scoreboard players operation @s ratioLuck += @s lbunluck

scoreboard players operation luck lbluck /= @s ratioLuck
scoreboard players operation @s ratioLuck = luck lbluck

# tellraw @s [{"text":"Your luck is ","color":"green","bold":true},{"score":{"name":"@s","objective":"ratioLuck"}},{"text":"%","color":"green","bold":true}]
