
Esto es un programa bastante simple que hice para imprimir 
 _          _ _                            _     _
| |        | | |                          | |   | |
| |__   ___| | | ___   __      _____  _ __| | __| |
| '_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| '__| |/ _` |
| | | |  __/ | | (_) |  \ V  V / (_) | |  | | (_| |
|_| |_|\___|_|_|\___/    \_/\_/ \___/|_|  |_|\___|
 no es tan complicado pero hay que pensar mucho

iniciamos la memoria
asdf
 celda 0
la dejamos en ascii 8   
++++++++++
 [              
    
    >++++++++++++   celda 1 esta en 120 ascii esto es para los |
    >+++            celda 2 30 ascii esto solo es para los espacios  
    >+++++++++      celda 3 90 ascii  esto solo es para los _
    >+              celda 4 esta en ascii 10  esto solo es para el salto de linea \n
    <<<<-           esto regresa a la posicion 0 y resta un valor  como es 10 veces mayor a 0  se va restando 
]

DECLARACIONES
>++++   celda 1 esto es la pipe     124
>++     celda 2 esto es el espacio  32
>+++++  celda 3 esto es el _        95

PRIMERA PARTE

<.>.                32(space)  y _ celda ( 2 y  3)
<<<++++++++++       celda 0 aumenta 10 
[>>.<<-]            imprime 32(space) por 10 celda(2 y 0) 
>>>.<.>.            despues imprime _ 32(space) _  celda (2 3 2 3) termina en 3
<<<+++++++          celda 0 aumenta 10  
[>>....<<-]         32(space) por 10  celdas (2 y 0) termina en 0 
>>>.<.....>._>. _   32(space) *4 _ y salto de linea celdas (3 2 3 4) termina en 0 

RESULTADO ESPERADO DE ESTA PRIMERA PARTE

```
 _          _ _                            _     _
```

SEGUNDA PARTE

<<<.>.<.                | 32(space) | celda ( 1 2 1) termina en 1
<++                     celda 0 aumenta 2 
[>>....<<-]             imprime 8 veces 32(space) celda ( 2 y  0) termina en celda 0 
>.>.<.>.<.              imprime | 32(space) | 32 | celda ( 1 2 1 2 1)  termina en la celda 1
<+++++++++++++          celda 0 aumenta 10
[>>..<<-]               imprime 26 veces 32(space) y termina en 0
>.>.<.>...<.>.<.>>>.    imprime | 32 |  termina en 32 celda ( 1 2 1 222 1 2 1 4) Termina en 4

RESULTADO ESPERADO
```
| |        | | |                          | |   | |
```

TERCERA PARTE
<<<.>.<.>>..        imprime | 32 |__ celdas (1 2 1 x2) termina en 3
<...>...            imprime 32x3 e 95x3 veces celdas ( 2 y 3 ) termina en 3
<<.>.<.>.<.>.       imprime ___| 32| 32 | 32 celdas ( 1 2 1 2 1 2) termina en la celda 2
>...<...>..         imprime 95x3 32x3 95x2 celdas ( 3x2 2x3  3x2 ) termina en 3
<<<++               Bucle 
[>>...<<-]          imprime 32 por 10 veces celdas(2 y 0) termina en 0
>>>.....<..>.<.>..  imprime 95x6 32x2 celdas (2 termina en 3
<<.>.<.>.           imprime  124 32 124 32 |32|32   celdas (1 2 1 2) termina en 2
>..<<.>.<.>>>. imprime __| | 95x2 124 32 124 10 __|32|10 celdas (3x2 1 2 1 4)
RESULTADO ESPERADO

```
| |__   ___| | | ___   __      _____  _ __| | __| |
```
CUARTA PARTE

<<<.>.+++++++.>.---         imprime 124 32 39(') 95  (|32'_) celdas (1 2 2 3) 
                            aumenta el valor de la celda 2 a 39(')  y regresa su valor al original termina en 3 
<-------.>.+++<.            imprime 32 92 y 92 (32\32) celdas ( 2 3 2 ) 
<<+++[>>+++++<<-]>>.        imprime (47)
<<+++[>>-----<<-]>>.>.---   aumenta el valor de la celda 2 a 47(/) celdas (0 y 2 )termina en 0 
                            imprime  32 95 (32_) termina en 3
<.>.<.<.>.<.    regresa a su valor original la celda 3
                imprime 32 92 32 124 32 124 (32\32|32|) celdas (2 3 2 1 2 1)    
                termina en 1 
<+++[>>+++++<<-]>>.     Aumenta el valor de la celda 2 a 47 (/)y lo imprime
<<+++[>>-----<<-]>>.    y regresa a su valor original y lo imprime (32)
>+++.<.>---.            y al final termina imprimiendo 95 32 y 92 (_32\)
<..>.<.>.<.             imprime 32x2 92 32 92 32( 32x2\32\32) celdas(3 2 3 2 ) termina en 2
<<+++[>>+++++<<-]>>.>.  imprime 32 y 92 (/\) celdas (2 3) termina en 3

este es el bucle 500 de iq
<<<++ en la celda 0 le ponemos 2
[
    esto esta en la celda 5
    >>>>>+++[<<<----->>>-]<<<. baja el valor de la celda 2 y  lo reduce a su valor original (32)
    >>>---[<<<+++++>>>+]<<<. lo imprime y se ejecuta 2 veces  
    <<-
] el resultado de esto es (32/32/)
+++[>>-----<<-]>>. imprime la celda 2 termina en la celda 2
>+++.<.>---.<<.>. imprime 95 32 92 124 (_32\|) celdas(3 2 3 1) termina en 2
<<++[>>+++<<-]>>+.>+++..<<.<++[>>---<<-]>>-.<. imprime 39 95 124 32('__|32|) 
0     2    0   2    3    1  0   2    0   2   1
usa variios bucles para poder cambiar el valor de la celda 2
termina en 1
<+++[>>+++++<<-]>>.<<+++[>>-----<<-]>>.>.+.-<.<.>>>.  imprime 47 32 95 96 124 10(/32_`32|10) celdas(02 02 3 2 1 4)termina en 4
RESULTADO ESPERADO
```
| '_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| '__| |/ _` |
```
| '_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| '__| |/32_`32|
QUINTA PARTE
<<<.>.<.>.<.>.<.>..>.. imprime 124 32 124 32 124 32 124 32x2 95x2(|32|32|32|32x2_x2) termina en 3
<<<+++[>>+++++<<-]>>. imprime 47 (/) termina en 2
<<+++[>>-----<<-]>>.<.>.<.>. imprime (32|32|32) termina en 1
<<++[>>++++<<-]>>.<<++[>>----<<-]>>.<<++[>>++++<<-]>>+.<<++[>>----<<-]>>-. imprime 40 32 41 32 ((32)32) termina en celdas(222) termina en 2
<.>..>---.<.<------.>..<.++++++>. imprime (32x2\32\32v32x2v32)  termina en 2
<<+++[>>+++++<<-]>>. esto escribe / en la celda 2
<<+++[>>-----<<-]>>. esto le regresa su valor original (32)
<<++[>>++++<<-]>>. le da un valor 40 (()
>+++.<+. imprime (_))
<<++[>>----<<-]>>-.<.>.<.>.. imprime (32|32|32|32x2) termina en 2
<.>.<.>.<<++[>>++++<<-]>>.>.<<.
<++[>>----<<-]>>.<.>>>. imprime | |  | | (_| | TERMINA EN 4

RESULTADO ESPERADO

```
| | | |  __/ | | (_) |  \ V  V / (_) | |  | | (_| |
```

SEXTA PARTE
<<<.>>.<<.>.<.>>.<<. imprime |_|32|_| termina en 1
 >>---.+++...<<.>>.<<.>>.<<. \___|_|_|
 >>---.+++... \____
 <<<+++[>>+++++<<-]>>. barra termina en 2
 <<+++[>>-----<<-]>>....
>---.+++. termina en 3
<<<+++[>>+++++<<-]>>.>---.+++.<. barra termina 2
<<+++[>>-----<<-]>>.>---.+++...
<<<+++[>>+++++<<-]>>.<.>>.<<.
<+++[>>-----<<-]>>..<.>>.<<.>>---.+++...<<.>>>.


 


 _          _ _                            _     _
| |        | | |                          | |   | |
| |__   ___| | | ___   __      _____  _ __| | __| |
| '_ \ / _ \ | |/ _ \  \ \ /\ / / _ \| '__| |/ _` |
| | | |  __/ | | (_) |  \ V  V / (_) | |  | | (_| |
|_| |_|\___|_|_|\___/    \_/\_/ \___/|_|  |_|\___|
