padre(juan).
padre(antonio).
madre(luisa).
padrede(juan, julio).
padrede(juan, jose).
padrede(juan, felipe).
madrede(luisa, paula). 
abuelo(X,Y):- padrede(X,W), padrede(W,Y).

#no poner mayusculas porque lo va a tomar como una variable lo que sigue de la mayuscula
