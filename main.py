# CÓDIGO ESCRITO EN SU TOTALIDAD POR PATRICIO NAHUEL MONSALVO CANOSA, 2026

def f1(x):
    return x

def integrar(f: function, a:float, b:float, n_squares: int):
    sum = 0
    dx = (b-a)/n_squares

    while(a<b):
        sum += f(a)*dx
        a=a+dx

    return sum

print(integrar(f1,0,1,2))