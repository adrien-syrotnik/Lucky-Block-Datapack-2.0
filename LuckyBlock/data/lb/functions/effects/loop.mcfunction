scoreboard players remove @e[scores={count=1..}] count 1

kill @e[type=skeleton,scores={count=0}]
kill @e[type=shulker,scores={count=0}]

execute as @e[name=WaterDis,scores={count=1},type=armor_stand] at @s run fill ~-2 ~5 ~-6 ~2 ~-5 ~6 air replace water
kill @e[name=WaterDis,scores={count=0}]

#malédition immobile
kill @e[tag=dontmove,scores={count=..0}]
execute as @e[tag=dontmove] at @s unless entity @a[distance=..1] at @p[distance=..3] positioned ~ ~ ~0.5 run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=dontmove] at @s unless entity @a[distance=..1] at @p[distance=..3] run kill @s


stopsound @a[scores={d=1}]
execute as @a[scores={d=1,mdegat=1..}] run function lb:effects/malediction_degat_avant_death
scoreboard players reset @a[scores={d=1}] d

execute as @a[scores={book=19}] at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,CustomName:'{"text":"???","color":"white","bold":true}'}
scoreboard players add @a[scores={book=1..}] book 1
scoreboard players reset @a[scores={book=20..}] book

kill @e[type=snowball]
execute as @a[scores={snowball=1..}] at @s run effect give @a[distance=1..] minecraft:slowness 3 5 true
execute as @a[scores={snowball=1..}] run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"selector":"@s","color":"dark_red"},{"text":" applique l'effet ralentissement à tous les joueurs","color":"gold"}]
scoreboard players reset @a[scores={snowball=1..}] snowball


kill @e[type=egg]
execute as @a[scores={egg=1..}] at @s run effect give @a[distance=1..] minecraft:speed 1 80 true
execute as @a[scores={egg=1..}] run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"selector":"@s","color":"dark_red"},{"text":" applique l'effet speed à tous les joueurs","color":"gold"}]
scoreboard players reset @a[scores={egg=1..}] egg

#
clear @a[scores={fishing_rod=1..}] fishing_rod
scoreboard players reset @a[scores={fishing_rod=1..}] fishing_rod

execute as @a[scores={enderpearl=1..}] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0 0 0 .5 100
execute as @a[scores={enderpearl=1..}] at @s run playsound minecraft:entity.enderman.teleport ambient @a
execute as @a[scores={enderpearl=1..}] at @s run tp @s ~ ~25 ~
effect give @a[scores={enderpearl=1..}] minecraft:levitation 1 1 true
effect give @a[scores={enderpearl=1..}] minecraft:slow_falling 4 3 true
scoreboard players reset @a[scores={enderpearl=1..}] enderpearl
kill @e[type=ender_pearl]


execute as @e[name=Meuhhhh,scores={count=1..},type=cow] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 1
execute as @e[name=Meuhhhh,scores={count=1..},type=cow] at @s run damage @e[distance=..1,limit=1] 1000 mob_attack by @s
execute as @e[name=Meuhhhh,scores={count=1..},type=cow] at @s run tp @s ~ ~ ~1
kill @e[name=Meuhhhh,scores={count=0}]


execute as @e[type=armor_stand,tag=lock_obsi_inv] at @s unless entity @e[type=rabbit,tag=lock_obsi,distance=..1] at @p run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[type=armor_stand,tag=lock_obsi_inv] at @s unless entity @e[type=rabbit,tag=lock_obsi,distance=..1] run fill ~2 ~ ~-2 ~-2 ~2 ~-2 air replace stone
execute as @e[type=armor_stand,tag=lock_obsi_inv] at @s unless entity @e[type=rabbit,tag=lock_obsi,distance=..1] run kill @s

scoreboard players remove @a[scores={wind=1..}] wind 1
execute as @a[scores={wind=1..}] at @s run tp @s ~ ~ ~0.1
execute as @a[scores={wind=1..}] at @s run playsound minecraft:entity.phantom.flap ambient @p ~ ~ ~ 1 1

execute as @e[type=slime] run data merge entity @s {Health:0.1f,Attributes:[{Name:generic.attack_damage,Base:0.5}]}


execute positioned -1000 100 -1000 as @a[distance=..500,gamemode=survival] run execute store result score @s Distance run data get entity @s Pos[2]
execute positioned -1000 100 -1000 as @a[distance=..500,gamemode=survival] run scoreboard players add @s Distance 1000
execute positioned -1000 100 -1000 as @a[distance=..500,gamemode=survival] run scoreboard players operation @s Distance *= -1 -1


#blue shell
execute as @e[tag=BlueShell,scores={count=1..}] at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.5 2
#execute as @e[tag=BlueShell,scores={count=1..}] at @s run tp @s ~ ~ ~ ~5 ~
#get best pos
execute at @e[tag=BlueShell,scores={count=1..}] as @a if score @s currentplayer = BestDistance currentplayer facing entity @s feet run tp @e[tag=BlueShell,scores={count=1..},limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @e[tag=BlueShell,scores={count=1..}] at @s run tp @s ^ ^ ^1

execute as @e[tag=BlueShell,scores={count=1..}] at @s at @a[distance=..2] unless score BestDistance currentplayer = @p currentplayer run damage @p 3 cactus by @s
execute as @e[tag=BlueShell,scores={count=1..}] at @s at @a[distance=..2] if score BestDistance currentplayer = @p currentplayer run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Carapace Bleue","color":"dark_blue","bold":true}'}
#Detect if the player touched is near the end, for the success
execute as @e[tag=BlueShell,scores={count=1..}] at @s at @a[distance=..2] if score BestDistance currentplayer = @p currentplayer as @e[name="NextStage",type=armor_stand,scores={level=4},distance=..10] if score @s currentplayer = @p currentplayer run advancement grant @p only lb:lucky_block/blue_shell_for_the_winner
execute as @e[tag=BlueShell,scores={count=1..}] at @s at @a[distance=..2] if score BestDistance currentplayer = @p currentplayer run kill @s

kill @e[tag=BlueShell,scores={count=..1}]


gamemode spectator @a[scores={kami=80}]
execute as @a[scores={kami=60}] at @s run title @s subtitle {"text":"Fonce sur les gens !","color":"dark_red"}
gamemode survival @a[scores={kami=1}]
execute as @a[scores={kami=60}] at @s run title @s title {"text":"3"}
execute as @a[scores={kami=60}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute as @a[scores={kami=40}] at @s run title @s title {"text":"2"}
execute as @a[scores={kami=40}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute as @a[scores={kami=20}] at @s run title @s title {"text":"1"}
execute as @a[scores={kami=20}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute as @a[scores={kami=1}] at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:5b,CustomName:'{"text":"Kamikaze","color":"dark_red","bold":true}'}
kill @a[scores={kami=1}]
scoreboard players remove @a[scores={kami=1..}] kami 1

execute as @a[scores={useBedRed=1..}] at @s run function lb:effects/bed/on_use_bed

execute as @a[scores={music=1..}] at @s run function lb:effects/good/bcs_music