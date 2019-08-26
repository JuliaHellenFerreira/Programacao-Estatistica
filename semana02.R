# Semana 2 - Controle de Fluxo

#Exercício 2.1

print("Triângulos")
a <- 2
a
b <- 3
b
c <- 4
c

## Verificando
if(a==b==c){
  print("É um triângulo equilátero!")
}else if(a!=b!=c){
  print("É um triângulo escaleno!")
}else{
  print("É um triâgulo isósceles!")
}

#Exercício 2.2

# Letra a

vet <- NULL
i <- 1
while (length(vet)<100){
  vet[i] <- i*3
  i <- i+1
}
vet
length(vet)

# Letra b

multiplo_3 <-  NULL
i <-  1
repeat{
  if(3*i >= 100)
    break
  multiplo_3[i] <- 3*i
  i <- i+1
}
multiplo_3
length(multiplo_3)

# Letra c #### Dúvida ####

impares <- NULL
i <- 1
while (length(impares)<100){
  if(i%%2 !=0)
  impares[i] <- i
  i <- i+1
}
impares

# Exercício 2.3

# Letra a

M <- matrix(0, nrow = 10, ncol = 10)
M

# Letra a
m1 <- NULL
M1 <- matrix(0, nrow = 10, ncol = 10)
M1
for(i in 1:10){
  M1[1,i] <- 1
}
M1

# Letra b

M2 <- matrix(0, nrow = 10, ncol = 10)
M2
for (i in 1:10){
  for(j in 1:10){
  M2[i,j] <- i
  }
}
M2

# Letra c

M3 <- matrix(0, nrow = 100, ncol = 100)
M3
for(i in 1:100){
  for(j in 1:100){
    M3[i,j] <- j 
  }
}
M3

# Letra d

M4 <- matrix(0, nrow = 100, ncol = 100)
M4
for(i in 1:100){
  for(j in 1:100){
    if(i%%2 == 0)
      M4[i,j] <- 2
    else
    M4[i,j] <- 1
}}
M4

# Exercício 2.4

matriz <- matrix(0, nrow = 100, ncol = 100)
matriz

# Letra a

for(i in 1:100){
    matriz[i,i] <- i
}
matriz

# Letra b

for(i in 1:100){
  matriz[i,i] <- 100-i+1
}
matriz

# Exercício 2.5

# Letra a

L1 <- list()
i <- 1
while(length(L1)<10){
  L1[i] <- 1
  i <- i+1
}
L1
length(L1)

# Letra b

L2 <- list()
vet <- NULL
i <- 1
while(length(L2)<10){
  vet[i] <- 1
  L2[[i]] <- vet
  i <- i+1
}
L2
length(L2)

# Letra c

L3 <- list()
for(i in 1:10){
  L3[[i]] <- 0
  for(j in 1:10){
    L3[[i]][j] <- i*j
  }
}
L3
length(L3)
vet
length(vet)

# Letra d

L4 <- list()
for(i in 1:10){
  L4[[i]] <- i
  for(j in 1:i){
    L4[[i]][j] <- j*2
  }
}
L4

# Lista e

L5 <- list()
for(i in 1:10){
  L5[[i]] <- 0
  m5 <- matrix(0, nrow = i, ncol = i)
  for(j in 1:i){
    m5[j,j] <- 1
    L5[[i]] <- m5
  }
}
L5
m5

# Exercício 2.6

# Letra a

s <- 0
for(i in 1:10){
  s <- s + L1[[i]]
}

s

# Letra b

vet <- 0
for (i in 1:10){
  for(j in 1:10)
  vet <- vet + L3[[i]][j]
}
vet

# Exercício 2.7

# Letra a

vet <- NULL
for(i in 1:10){
  soma <- 0
  for(j in 1:length(L4[[i]])){
    soma <- soma + L4[[i]][j]
  }
  vet[i] <- soma
}
vet

# Letra b
