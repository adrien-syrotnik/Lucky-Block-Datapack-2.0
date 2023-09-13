# delete the bed arround the aera
effect give @s minecraft:resistance 1 10 true
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace red_bed
summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"THE Red Bed","color":"dark_red","bold":false}',Invulnerable:1b}

# find an enderdragon and kill it (if there is one)
execute at @e[type=ender_dragon,distance=..10] run advancement grant @s only lb:lucky_block/ender_dragon
execute at @e[type=ender_dragon,distance=..10] run damage @e[type=minecraft:ender_dragon,limit=1,sort=nearest] 10000 minecraft:player_explosion by @s