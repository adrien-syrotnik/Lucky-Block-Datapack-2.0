fill ~-2 ~5 ~-6 ~2 ~-5 ~6 water replace air
summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"WaterDis"}'}
scoreboard players set @e[name=WaterDis, type=armor_stand, sort=nearest, limit=1] count 100
advancement grant @p only lb:lucky_block/fish_water
advancement grant @p only lb:lucky_block/fire_water