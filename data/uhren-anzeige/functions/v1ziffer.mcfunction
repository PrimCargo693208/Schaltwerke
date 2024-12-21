# Der Konstruktionsblock wird platziert und besitzt ein Zifffern-Argument dass die gewünschte Ziffer lädt.
$setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"uhren-anzeige:v1ziffer_$(Ziffer)",posY:0} replace

# Je nach der Blickrichtung des Ziffern-Markierers, wird die Ziffer durch den Konstruktionsblock an die entsprechende Richtung angepasst.
execute if entity @s[y_rotation=134.9..-135.0] run data merge block ~ ~ ~ {rotation:"NONE",posX:-1,posZ:0}
execute if entity @s[y_rotation=-134.9..-45.0] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX:0,posZ:-1}
execute if entity @s[y_rotation=-44.9..45.0] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180",posX:1,posZ:0}
execute if entity @s[y_rotation=44.9..135.0] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",posX:0,posZ:1}

# Um den Konstruktionsblock zu aktivieren, wird ein Redstone-Block direkt darüber platziert, sodass beim Laden der Konstruktion sowohl Redstone-Block als auch Konstruktionsblock durch die Konstruktion ersetzt werden.
setblock ~ ~1 ~ minecraft:redstone_block replace
