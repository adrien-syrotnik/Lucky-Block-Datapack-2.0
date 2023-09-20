#execute if there is another blue shell at the position, tp under 1 block
execute positioned ~ ~-2 ~6 as @e[type=armor_stand,tag=BlueShell,distance=..1,limit=1] at @s run tp @s ~ ~-1 ~6
execute positioned ~ ~-1 ~ as @e[type=armor_stand,tag=BlueShell,distance=..1,limit=1] at @s run tp @s ~ ~-1 ~6


summon armor_stand ~ ~-1 ~ {Tags:["BlueShell"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1915369139,837830495,-1294780863,1101422121],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTA0ZjllZWNiOWI2NmNhNTY0MDQ1MzgwOTNlNDcyZTY5MDE0ZGY3MmM0MjRhNzZkMjhhZmE4ZWZkZTVhMjNiMiJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:1052688,NoGravity:1b}
execute as @e[type=armor_stand,tag=BlueShell] unless score @s count matches 0.. run scoreboard players set @s count 200
tellraw @a ["",{"text":"[Lucky Block] ","color":"dark_red"},{"selector":"@p[scores={ingame=1},gamemode=survival]","bold":true,"color":"dark_red"},{"text":" threw a ","color":"gold"},{"text":"Blue Shell ","bold":true,"color":"blue"},{"text":"on the first player!","color":"gold"}]

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbunluck 1