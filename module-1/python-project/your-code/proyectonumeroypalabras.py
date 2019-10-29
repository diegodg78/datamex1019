import random


'''num = [1,2,3,4,5,6,7,8,9,10]
numsec = random.choice(num)
intento = 0
limite = 3

while intento < limite:
    n = input('Adivina el numero aleatorio del 1 al 10  ')
    intento +=1
    if int(n) == int(numsec):
        print('ADIVINASTE!')
        break
else :
    print('Lo siento has perdido, el numero era: ' + str(numsec))
'''





banco = ["programacion", 'perro', 'gato', 'python', 'while', 'break', 'mysql', 'tormenta', 'futbol', 'tenis', 'americano']

palabra = list(random.choice(banco))

vidas = 7

tupalabra = ''

while vidas > 0:
    fallas = 0
    for letra in palabra:
        if letra in tupalabra:
            print(letra, end=" ")
        else:
            print("*", end="")
            fallas +=1
    if fallas == 0:
        print('Felicidades Ganaste')

    eleccion = input('          Elige una letra  ')
    tupalabra +=eleccion

    if eleccion not in palabra:
        vidas -=1
        print('mal')
        print('tienes ', vidas, ' vidas')
    if vidas == 0:
        print('Has perdido ')
