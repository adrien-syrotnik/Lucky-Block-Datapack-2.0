# After showing the passif name in title, we need a short desc in the subtitle

# Passif 0 => keepinventory
execute if score @p passif_game matches 0 run title @a subtitle ["",{"text":"Keep your inventory when you die","color":"dark_green"}]

# Passif 1 => Random kit all time
execute if score @p passif_game matches 1 run title @a subtitle ["",{"text":"Get a random kit when you die","color":"dark_green"}]

# Passif 2 => 2 block in a raw give the same effect
execute if score @p passif_game matches 2 run title @a subtitle ["",{"text":"Get the same Lucky Block in 2 different blocks","color":"dark_green"}]

# Passif 3 => 1 lucky block effect is done 2 times
execute if score @p passif_game matches 3 run title @a subtitle ["",{"text":"Double the effect of each Lucky Block","color":"dark_green"}]

# Passif 4 => 1 lucky block effect is done 3 times
execute if score @p passif_game matches 4 run title @a subtitle ["",{"text":"Triple the effect of each Lucky Block","color":"dark_green"}]

schedule function lb:passive/launch_game 5s