effect give @a minecraft:levitation 1 25 true
playsound minecraft:entity.warden.sonic_boom ambient @p ~ ~ ~ 1 1
schedule function lb:effects/clearlevitation 8t
particle block dirt ~ ~ ~ 1 0 1 1 100 normal