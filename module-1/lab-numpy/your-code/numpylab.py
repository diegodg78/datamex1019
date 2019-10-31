import numpy as np
import pandas as pd

print(np.version)
print(np.__config__)

a = np.random.rand(2, 3, 5)
print(a)

b = np.ones((5,3,2))
print(b)

print(a.size == b.size)
#print(np.sum(a+b))
#No they can't because the can't broadcast together

c = np.reshape(b, (2, 3, 5))

d= (a+c)
#They work because they have the same shape

print(a)
print(d)

e = (a*c)

print(a.size == e.size)
#Yes they are equal

d_max = np.max(d)
d_min = np.min(d)
d_mean = np.mean(d)

f = np.empty((2, 3, 5))

for r in range(len(f)):
    for i in range(len(f[r])):
        for m in range(len(f[r][i])):
            if d_min < d[r][i][m] < d_mean:
                f[r][i][m] = 25
            elif d_mean < d[r][i][m] < d_max:
                f[r][i][m]= 75
            elif d[r][i][m] == d_mean:
                f[r][i][m] = 50
            elif d[r][i][m] == d_min:
                f[r][i][m] = 0
            elif d[r][i][m] == d_max:
                f[r][i][m] = 100
#YES
print(f)

