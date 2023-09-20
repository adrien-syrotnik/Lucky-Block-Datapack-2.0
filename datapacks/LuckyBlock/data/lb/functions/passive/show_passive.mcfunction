# clear subtitle
title @a subtitle {"text":""}

# Passif 0 => keepinventory
execute if score @p passif_game matches 0 run title @a title ["",{"text":"Keep Inventory","color":"green"}]

# Passif 1 => Random kit all time
execute if score @p passif_game matches 1 run title @a title ["",{"text":"Random Kits","color":"green"}]

# Passif 2 => 2 block in a raw give the same effect
execute if score @p passif_game matches 2 run title @a title ["",{"text":"2 In a Raw","color":"green"}]

# Passif 3 => 1 lucky block effect is done 2 times
execute if score @p passif_game matches 3 run title @a title ["",{"text":"Double Effect","color":"green"}]

# Passif 4 => 1 lucky block effect is done 3 times
execute if score @p passif_game matches 4 run title @a title ["",{"text":"Triple Effect","color":"green"}]

schedule function lb:passive/show_passive_desc 2s