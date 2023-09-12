# delete the bed arround the aera
effect give @s minecraft:resistance 1 10 true
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace red_bed
summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"THE Red Bed","color":"dark_red","bold":false}',Invulnerable:1b}