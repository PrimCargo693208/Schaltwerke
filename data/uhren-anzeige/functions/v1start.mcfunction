# Das Punkte-Ziel für das Zählen der Uhrzeit wird erstellt.
scoreboard objectives add PZUhrA.1Ziffer dummy ["Uhren-Anzeige.1: ",{"text":"Zeit der Uhr","bold":true}]

# Allen Spielern im Umkreis von 25 Metern wird ein Rüstungsständer ins Inventar gelegt, mit dem man die Uhren-Anzeige platzieren kann.
give @a[distance=..25] minecraft:armor_stand{EigUhrA.1Alle:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Uhren-Anzeige","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Uhr"','"erscheinen zu lassen"']},EntityTag:{Invisible:true,NoGravity:true,Tags:["EtiUhrA.1Alle","EtiUhrA.1Erstellen"]} }
