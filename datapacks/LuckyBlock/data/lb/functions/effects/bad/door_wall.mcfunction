fill ~-2 ~-5 ~-2 ~2 ~5 ~-2 minecraft:birch_log destroy

#add 2 doors
#first
setblock ~-1 ~ ~-1 minecraft:birch_door[half=lower,facing=south,hinge=left] destroy
setblock ~-1 ~1 ~-1 minecraft:birch_door[half=upper,facing=south,hinge=left] destroy
#second
setblock ~1 ~ ~-1 minecraft:birch_door[half=lower,facing=south,hinge=right] destroy
setblock ~1 ~1 ~-1 minecraft:birch_door[half=upper,facing=south,hinge=right] destroy

#add leaves
fill ~-2 ~4 ~-2 ~2 ~5 ~-2 minecraft:birch_leaves destroy
fill ~-2 ~3 ~-1 ~2 ~4 ~-1 minecraft:birch_leaves destroy

#add holes behind doors
fill ~-1 ~-10 ~-2 ~-1 ~1 ~-2 minecraft:air destroy
fill ~1 ~-10 ~-2 ~1 ~1 ~-2 minecraft:air destroy

#set random, to put the true block on right or left, and the false block on the other side
scoreboard players set max RANDOM 2
function lb:rand

execute if score @s RANDOM matches 0 run setblock ~-1 ~-1 ~-2 minecraft:birch_planks destroy
execute if score @s RANDOM matches 0 run setblock ~1 ~-1 ~-2 minecraft:air destroy
execute if score @s RANDOM matches 0 align xz run summon falling_block ~1.5 ~-1 ~-1.5 {BlockState:{Name:"minecraft:birch_planks"},NoGravity:1b,Time:1,DropItem:0b}

execute if score @s RANDOM matches 1 run setblock ~-1 ~-1 ~-2 minecraft:air destroy
execute if score @s RANDOM matches 1 run setblock ~1 ~-1 ~-2 minecraft:birch_planks destroy
execute if score @s RANDOM matches 1 align xz run summon falling_block ~-0.5 ~-1 ~-1.5 {BlockState:{Name:"minecraft:birch_planks"},NoGravity:1b,Time:1,DropItem:0b}

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbunluck 1