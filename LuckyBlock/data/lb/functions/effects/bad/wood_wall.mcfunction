execute run fill ~-2 ~ ~-2 ~2 ~4 ~-2 oak_wood
execute run fill ~ ~ ~-1 ~ ~4 ~-1 ladder[facing=south]
execute if score @p[scores={ingame=1},gamemode=survival] oldideffect matches 3 run advancement grant @p[scores={ingame=1},gamemode=survival] only lb:lucky_block/zombie_tower

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbunluck 1