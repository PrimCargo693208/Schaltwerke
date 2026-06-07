data modify storage zahlenrechner:daten operator set value "*"
scoreboard players operation .ergebnis zahlenrechner = .zahl1 zahlenrechner
scoreboard players operation .ergebnis zahlenrechner *= .zahl2 zahlenrechner

execute store result storage zahlenrechner:daten ergebnis int 1 run scoreboard players get .ergebnis zahlenrechner