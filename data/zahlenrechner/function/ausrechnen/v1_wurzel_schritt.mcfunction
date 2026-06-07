# a2 = a / x
scoreboard players operation .wurzel_a2 zahlenrechner = .wurzel_a zahlenrechner
scoreboard players operation .wurzel_a2 zahlenrechner /= .wurzel_x zahlenrechner

# a2 = a2 + x
scoreboard players operation .wurzel_a2 zahlenrechner += .wurzel_x zahlenrechner

# a2 = a2 / 2
scoreboard players operation .wurzel_a2 zahlenrechner /= #2 zahlenrechner

# x in x2 speichern, um die Variable später zur Überprüfung nutzen zu können
scoreboard players operation .wurzel_x2 zahlenrechner = .wurzel_x zahlenrechner

# x(n+1) = a2
scoreboard players operation .wurzel_x zahlenrechner = .wurzel_a2 zahlenrechner

# Falls x nicht gleich x2 ist, dann die Rechenschleife fortführen
execute unless score .wurzel_x zahlenrechner = .wurzel_x2 zahlenrechner run function zahlenrechner:ausrechnen/v1_wurzel_schritt
