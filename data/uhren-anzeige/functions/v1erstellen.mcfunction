# Die Markierer für die Ziffern werden von der Blickrichtung des Erstellen-Rüstungsständers aus in einer Reihe erzeugt.
summon minecraft:marker ^ ^4 ^ {Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1Sekunden"]}
summon minecraft:marker ^-4 ^4 ^ {Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1SekundenZehner"]}
summon minecraft:marker ^-7 ^4 ^ {Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Punkte"]}
summon minecraft:marker ^-10 ^4 ^ {Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1Minuten"]}
summon minecraft:marker ^-14 ^4 ^ {Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1MinutenZehner"]}
summon minecraft:marker ^-17 ^4 ^ {Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Punkte"]}
summon minecraft:marker ^-20 ^4 ^ {Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1Stunden"]}
summon minecraft:marker ^-24 ^4 ^ {Tags:["EtiUhrA.1Alle","EtiUhrA.1Blickwinkel","EtiUhrA.1Ziffer","EtiUhrA.1StundenZehner"]}

# Die Ziffern-Rüstungsständer werden alle in die gleiche Richtung rotiert in die der Erstellen-Rüstungsständer schaut und dieser wird vier Meter hoch teleportiert.
execute as @e[type=minecraft:marker,tag=EtiUhrA.1Blickwinkel] positioned as @s run teleport @s ~ ~ ~ ~ ~
#teleport @s ~ ~4 ~

# Alle Ziffern erhalten den Wert null und die Etiketten für das Erstellen werden entfernt.
scoreboard players set @e[type=minecraft:marker,tag=EtiUhrA.1Ziffer] PZUhrA.1Ziffer 0
tag @e[type=minecraft:marker,tag=EtiUhrA.1Blickwinkel] remove EtiUhrA.1Blickwinkel
#tag @s remove EtiUhrA.1Erstellen
kill @s
