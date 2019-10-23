import random
import csv
import pandas as pd
import os

#EJERCICIO 1
lista=[1]
for e in lista:
    e+=1
    if e < 51: lista.append(e)
print(lista)

#EJERCICIO 2
dos=[]
for e in range(201):
    e+=1
    if e%2==0 :
        dos.append(e)
print(dos)

#EJERCICIO 3
import numpy as np

una = [random.random() for l in range(4)]
dos = [random.random() for l in range(4)]
tres = [random.random() for l in range(4)]
cuatro = [random.random() for l in range(4)]
cinco = [random.random() for l in range(4)]
seis = [random.random() for l in range(4)]
siete = [random.random() for l in range(4)]
ocho = [random.random() for l in range(4)]
nueve = [random.random() for l in range(4)]
diez = [random.random() for l in range(4)]


a = [una,dos,tres,cuatro,cinco,seis,siete,ocho,nueve,diez]
print(np.array(a))

#EJERCICIO 4

for c in a:
    for s in c:
        if s >= 0.5:
            print([s])

#EJERCICIO 5

b = np.array([[[0.55867166, 0.06210792, 0.08147297],
            [0.82579068, 0.91512478, 0.06833034]],
           [[0.05440634, 0.65857693, 0.30296619],
            [0.06769833, 0.96031863, 0.51293743]],
           [[0.09143215, 0.71893382, 0.45850679],
            [0.58256464, 0.59005654, 0.56266457]],
           [[0.71600294, 0.87392666, 0.11434044],
            [0.8694668 , 0.65669313, 0.10708681]],
           [[0.07529684, 0.46470767, 0.47984544],
            [0.65368638, 0.14901286, 0.23760688]]])

x = np.hstack(b)
print(x)



#EJERCICIO 6


lstt = [f for f in os.listdir('./data') if f.endswith('csv')]

print(lstt)

#EJERCICIO 7

ej = [pd.read_csv(os.path.join('./data', f)) for f in lstt]

doc = pd.concat(ej, axis=0)
print(doc.head(10))

#EJERICIO 8

col = [g for g in doc._get_numeric_data() if doc[g].mean() < 0.48]

print(col)

#EJERCICIO 9

nueva = pd.DataFrame(doc)

nueva[20] = [m-1 for m in nueva['19']]
print(nueva)

#EJERCICIO 10

for z in doc.values:
    for d in z:
        if d < 0.75 and d > 0.7:
            print(d)
