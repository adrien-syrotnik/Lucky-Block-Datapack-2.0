loot replace block -8 -60 -4 container.0 loot lb:random_effect_weight 
function lb:spawn_effect_name
# if score passif_game is 3, means to call the effect 2 times
execute if score @p passif_game matches 3 run function lb:spawn_effect_name

# if score passif_game is 4, means to call the effect 3 times
execute if score @p passif_game matches 4 run function lb:spawn_effect_name
execute if score @p passif_game matches 4 run function lb:spawn_effect_name