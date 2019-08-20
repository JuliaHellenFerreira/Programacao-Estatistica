# Programaçao Estatistica - UFF
Professora Jessica - Utilizaremos o R Studio

## Semana 1 - Objetos e Classes

- numeric;
- logical;
- character;
- matrix;
- list.

### 1.1 Numérico
Vamos usar os seguintes comandos:

class() - saber a classe do objeto.

Temos os operadores simples como  +, -, * e  /. Além desses também temos,

sqrt() - raiz quadrada;

log() - logaritmo;

exp () - exponencial;

abs() - modulo.

### 1.2 Texto

O comando que mais iremos utilizar é o:

paste() - que irá concatenar objeto character. Ele irá retornar somente este tipo. Se quisermos separar iremos os objetos iremos acrescentar o: sep="" no final.

### 1.3 Lógico

Estes objetos podem ser TRUE ou FALSE. Vejamos a tabela a seguir:

A _______ B _______ A && B______ A || B

TRUE_____ TRUE _____ TRUE ________ TRUE

TRUE_____ FALSE_____ FALSE _______ TRUE

FALSE _____ TRUE ____ FALSE ______ TRUE

FALSE _____ FALSE ____ FALSE ______ FALSE

Para negação utilizamos !a, por exemplo. 

Temos estes operadoes para esse tipo:

== , != , < , >

### 1.4 Array


É uma sequência de objetos do mesmo tipo, para isto usaremos o comando:

c() - cria um array

Temos que lembrar que um array não é uma classe. E que tem no mínimo tamanho 1. O comando a seguir é muito importante:

lenght() - tamanho do array

Vamos observar os comandos e como são utilizados:

y <- c(1:10)

z <- seq(1:20, by = 2)

w <- rep(0, times = 5)

v <- c(1,2); v <- (v;4)

Podemos inicia-lo vazio:

v <- numeric()

### 1.5 Matrizes 



*Exercícios no arquivo SEMANA01*






