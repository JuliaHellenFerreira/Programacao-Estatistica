# Semana 1 - Objetos e Classes

# Exercício 1.1

x<- 0
y<- -1
z<- 3/2

# Letra a

a<- x+y+z
a
b<- y*z
a
c<- z/y
a

# Letra b

z^2
z^3
z^x
z^y

# Letra c

a^(1/2)
x^(1/2)
y^(1/2)

# Letra d

-abs(b)^(1/3)
(-1/c)^4
(z^2)^(1/3)

# Letra e

abs(x)
abs(y)
abs(z)

#Letra f

exp(x)
exp(y)
exp(c)

#Letra g

log(x)
log(a)
log(b)

#Letra h

(pi)^(1/2)
exp(-x)

# Exercício 1.2

ch1 <- a
ch1
ch2 <- b
ch2
ch3 <- c
ch3

# Letra a 

ch4 <- paste(ch1,ch2,ch3,sep =".")
ch4

# Letra b

ch5 <- paste(ch1,ch2,ch3)
ch5

# Letra c

ch4 == ch5

# Letra d

ch4 != ch5

# Exercício 1.3
# Letra a
a <- 18%%5
a
b = 15%%5
b
c <- 8.3%%3
c

# Letra b

a <- 33
if (a%%2 ==0){
  print("É par!")
}else{
  print("É impar!")
}

# Letra c 

a <- 3.4
if(a%%1 != 0){
  print("É não é um número inteiro!")
}else{
  print("É um número inteiro")
}

# Letra d

a <- -3.4
if(a%%1 ==0 && a >= 0){
  print("É um número natural!")
}else{
  print("Não é um número natural!")
}

#Exercício 1.4

a<-seq(1:10)
b<-seq(1,20,by=2)
c<-seq(20,1,by=-2) 

# Letra a

x <- b-c
x

# Letra b

y <- 2*a
y

#Letra c

z <- a==b
z

# Letra d

w <- b>c
w

# Exercício 1.5
# Letra a

a <- letters
a
b <- LETTERS
b

# Letra b

class(a)
class(b)

# Letra c

length(a)
length(b)

# Letra d

a <- c(LETTERS,letters)
a

# Letra e

b <- paste(LETTERS,letters)
b

# Exercício 1.6

# Letra a

a <- c(1,2,3,4,101,102,103,104)
m <- matrix(a,nrow = 4,ncol = 2, byrow = F)
m

# Letra b

a <- c(1,2,3,4,101,102,103,104)
m <- matrix(a,nrow = 2,ncol = 4, byrow = T)
m

# Letra c

m <- matrix(0, nrow = 3, ncol = 2, byrow = T)
m

# Letra d

m <- matrix(1, nrow = 3, ncol = 3, byrow = T)
m

# Exercício 1.7

A <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),4,3)
A
nrow(A)
ncol(A)
dim(A)

# Exercício 1.8 

# Letra A

minha_lista <- list("Julia Hellen", "22 anos", c("1.77m","55Kg"), c("FALSE","TRUE","TRUE"))

minha_lista

# Letra B

minha_lista[1]

# Letra C

minha_lista[2]

# Letra D

minha_lista[[3]][1] 

# Letra E

minha_lista[[3]][2] 

# Letra F

minha_lista[[4]][3]

# Exercício 1.9

# Letra A

lista_2 <- list("Beyoncé", "37 anos", c("1.67m", "62Kg"), c("FALSE","TRUE","TRUE"))
lista_2

# Letra B

dados_alunos <- list(minha_lista,lista_2)
dados_alunos

# Letra C

dados_alunos[[1]][[1]]

# Letra D

dados_alunos[[2]][[1]]

# Letra E

dados_alunos[[1]][[2]][1]

# Letra F

dados_alunos[[2]][[4]][1]


# Exercício 1.10

obj1 <- list(1,2,3) ## Uma lista com uma sequência de números formando 3 elementos.
obj2 <- list(c(1,2,3)) ## Uma lista contendo um array como seu único elemento.
obj3 <- c(1,2,3) ## Uma array.