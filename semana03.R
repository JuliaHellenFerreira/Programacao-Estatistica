# Exercício 3.1

# Letra a

menor <- function(a,b){
  if(a < b){
    print(paste(a, "é menor que b"))
    return(a)
  }else{
    print(paste(b,"é menor que a"))
    return(b)
  }
}

menor(-100,100)

# Letra b

menor1 <- function(a,b,c){
  if(a < b && a < c){
    print(paste(a, "é menor que b e c"))
    return(a)
  }else{
    if(b < a && b < c){
      print(paste(b,"é menor que a e c"))
      return(b)
    }else{
      print(paste(c, "é menor que b e c"))
      return(c)
    }
  }
}

menor1(7,100,3)


# Exercício 3.2

triangulo <- function(a,b,c){
  if(a == b && a == c){
    print("É um triangulo equilatero")
  }else
    if(a != b && c != b){
      print("É um triangulo escaleno")
    }else{
      print("É um triangulo isosceles")
    }
}
triangulo(2,3,3)

# Exercício 3.3

# Letra a

reais <- function(vet){
  pos <- NULL
  for(i in 1: length(vet)){
    if(vet[i] > 0){
      pos<- c(pos,vet[i])
    }   }
  return(length(pos))
}
reais(c(2,-3,4))

# Letra b

nreais <- function(vet1, a){
  menores <- NULL
  for(i in 1:length(vet1)){
    if(vet1[i] < a){
      menores <- c(menores,vet1[i])
    }
  }
  return(length(menores))
}
nreais(c(1,2,3,4,5,6,7),4)

# Exercício 3.4

# Letra a

multiplo <- function(n,m){
  mul <- NULL
  for( i in 1: n){
    mul[i] <- m*i
  }
  return(mul)
}
multiplo(2,35)

# Letra b

multiplo1 <- function(m,k){
  mul1 <- NULL
  i <- 1
  repeat{
    mul1[i] <- m * i
    i <- i + 1
    if (m * i > k){
      break
    }
  }
  return(mul1)
}
multiplo1(2,31)

# Letra c

multiplo2 <- function(m,k){
  mul2 <- NULL
  i <- 1
  cont <- 0 
  repeat{
    mul2[i] <- m * i
    i <- i + 1
    cont <- cont + 1
    if (m * i > k){
      break
    }
  }
  return(cont)
}
multiplo2(3,10)

# Letra f

# Todas as variavéis são locais

# Exercício 5

# Letra a

mat <- function(n){
  m <- matrix(0, nrow = n, ncol = n, byrow = T)
  for(i in 1:n){
    if(i %% 2 == 0){
      m[i,] <- 2
    }else
      m[i,] <- 1
    }
  return(m)
}
mat(5)

# Letra b

mat2 <- function(n){
  m2 <- matrix(0, nrow = n, ncol = n, byrow = T)
  for (i in 1:n) {
    for(j in 1:n){
      m2[,j] <- j
    }
  }
  return(m2)
}
mat2(5)

# Letra c

mat1 <- function(n){
  m2 <- matrix(0, nrow = n, ncol = n, byrow = T)
  for (i in 1:n) {
    for(j in 1:n){
      m2[i,i] <- i
    }
  }
  return(m2)
}
mat1(5)

# Exercício 3.6

# Letra a

vet <- function(vet,n){
  m <- matrix(0, nrow = n, ncol = n, byrow = T)
  for(i in 1:n){
    for (j in 1:n){
      m[i,i] <- vet[i]
    }
  }
  return(m)
}
vet(c(2,4,6,8,10),5)

# Letra b

vet <- function(vet,n){
  m <- matrix(0, nrow = n, ncol = n, byrow = T)
  for(i in 1:n){
    for (j in 1:n){
      m[i,j] <- vet[i]
    }
  }
  return(m)
}
vet(c(2,4,6,8,10),5)

# Letra c

vet <- function(vet,n){
  m <- matrix(0, nrow = n, ncol = n, byrow = T)
  for(i in 1:n){
    for (j in 1:n){
      m[j,i] <- vet[i]
    }
  }
  return(m)
}
vet(c(2,4,6,8,10),5)




