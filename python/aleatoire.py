from random import randint
n = randint(0,9)
a =input("Devine en saisissant un chiffre compris entre 0 et 9")
if int(a) == int(n) :
	print("Bravo! Tu as trouvé!")
else :
	print("Dommage, tu as faussé!")