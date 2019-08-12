# Programaçao Estatistica - UFF
Professora Jessica - Utilizaremos o R Studio

## Semana 1 - Objetos e Classes

Vamos aprender o comando *class(obj)* que tem como objetivo saber a classe do objeto. Ele pode ser classificado como "numric", "logical", "caracter", "matrix" e "list"(os mais comuns).

1. Números (numeric)

Trata-se dos reais logo, objetos dessas classes são números. Para criar um objeto desse modo faremos: 

x<-3.4
class(x)

Nesta categoria podemos resolver problemas matemáticos usando operadores como de soma, subtração, divisão e multiplicação.

- Dica: Use sempre o help para tirar suas duvidas. Exemplo: help(numeric)

2. Texto (character)

Temos nesta categoria, vamos criar objetos do tipo caracter. Para definir este tipo de objeto usaremos " ". 

Vejamos:
y <- "Julia"

class(y)

Caso queira transformar um objeto de outra classe em caracter, podemos usar o comando as.character().

Por exemplo:

c <- as.character(x)

E se eu quiser contatenar vários caracters? Basta usar o comando paste(). Para separar é preciso fazer: paste(...,sep="", ...), neste caso a função sep fará a separação entre cada caracter.

3. Lógicos (logical)
Irão receber os valores TRUE (T) ou FALSE (F). Para os objetos do tipo logical teremos as seguintes operações (e,ou), por exemplo.Vejamos:

v&&f (e)
v|f (ou)

Para negação faremos !a. Temos também temos operações ==(igual), !=(diferente).

4. Array

Podemos definir como uma sequência de objetos de mesma classe e sempre tem tamanho maior ou igual a 1. Sendo assim, temos v = c(1,2,3,4,5,6,7,8,9). Para saber o tamanho usaremos o comando length(). SE for precis encontrar algum objeto dentro de um Array, faremos [ ] para localizar. Vejamos uma coisa interessante, podemos fazer:

vet[12] <- 8 ( ele irá acrescentar está posição).

- Comandos
FALTA MATRIZ E LISTA






