summon armor_stand ~ ~ ~ {Tags:["PlayerHead"],ArmorItems:[{},{},{},{id:"player_head",Count:1b}],HandItems:[{},{}],CustomName:'{"text":":)"}',CustomNameVisible:1b,DisabledSlots:1052688}
execute facing entity @p[scores={ingame=1},gamemode=survival] eyes run tp @e[tag=PlayerHead,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @p[scores={ingame=1},gamemode=survival] run loot spawn ~ ~1 ~ loot lb:entities/player
schedule function lb:effects/playerhead 1t

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbluck 1
