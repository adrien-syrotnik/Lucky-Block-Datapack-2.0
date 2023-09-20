scoreboard players set max RANDOM 10
function lb:rand

execute if score EnablePassive level matches -1 run scoreboard players operation @a passif_game = @s RANDOM


# Passif 0 => keepinventory
execute if score @p passif_game matches 0 run gamerule keepInventory true

# Passif 1 => Random kit all time
# execute if score @p passif_game matches 1 run 

# Passif 2 => 2 block in a raw give the same effect
# execute if score @p passif_game matches 2 run 

# Passif 3 => 1 lucky block effect is done 2 times
# execute if score @p passif_game matches 3 run 

# Passif 4 => 1 lucky block effect is done 3 times
# execute if score @p passif_game matches 4 run


# if one of this passif is activated, play the sound and start the timer to show the passive to the users
execute if score @s passif_game matches 0..4 as @a at @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 2 1
execute if score @s passif_game matches 0..4 run function lb:passive/timer/p

# if not, start the game normally
execute unless score @s passif_game matches 0..4 run function lb:kits/timer/start