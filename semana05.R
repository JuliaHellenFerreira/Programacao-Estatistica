# Semana 05: Algoritmos para Cálculos Matriciais

# Exercício 5.1

mv <- function(v, x){
  w <- NULL
  n <- length(v)
  for(i in 1: n){
    w[i] <- x * v[i]
  }
  return(w)
}

mv(c(1,2,3,4),2)

# Exercício 5.2

somavets <- function(v,u){
  n <- length(v)
  w <- NULL
  if( length(v) == length(u)){
    for(i in 1:n){
      w[i] <- v[i] + u[i] 
    }
    }else{
      stop(" Não é possível calcular pois v e u tem tamanhos diferentes")
    }
  return(w)
}
v <- c(1,2,3)
u <- c(1,2,3,4)
somavets(v,u)

# Exercício 5.3

# Letra a ## No caderno ##

# Letra b

subvets <- function(v,u){
  w <- NULL
  n <- length(v)
  if( length(v) == length(u)){
    for(i in 1: n){
      w[i] <- v[i] - u[i]
    }
  }else{
      print("ERRO")
  }
  return(w)
}
v <- c(2,4,6,8)
u <- c(1,2,3,4)
subvets(v,u)

# Exercício 5.4

prod_int <- function(v,w){
  n <-  length(v)
  prod_i <- 0
  if( length(v) == length(w)){
    for(i in 1:n){
      prod_i <- prod_i + v[i]*w[i]
    }
  }else{
    stop("ERRO")
  }
  return(prod_i)
}
v <- c(2,4,6,8)
u <- c(1,2,3,4)
prod_int(v,u)

# Exercício 5.5

## Forma 1

ort <- function(v,u){
if( prod_int(v,u) == 0 ){
  return(TRUE)
}else{
  return(FALSE)
}
}
ort(v,u)

## Forma 2

prod_int2 <- function(v,w){
  n <-  length(v)
  prod_i <- 0
  if( length(v) == length(w)){
    for(i in 1:n){
      prod_i <- prod_i + v[i]*w[i]
    }
  }else{
    stop("ERRO")
  }
  return(prod_i == 0)
}
v <- c(0,0,0,0)
u <- c(1,2,3,4)
prod_int2(v,u)

# Exercício 5.6#

mulv <- function(A,v){
  n <- nrow(A)
  m <- ncol(A)
  M <- matrix(0, nrow = n, ncol = m)
  for(i in 1: n){
    for(j in 1:m){
      M[i,j] <- v*A[i,j]
    }
  }
  return(M)
}

A <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = T)
v <- 2
mulv(A,v)

# Exercício 5.7

somam <- function(A,B){
  n <- nrow(A)
  m <- ncol(A)
  l <- nrow(B)
  c <- ncol(B)
  if(n == m & l == c){
    M <- matrix(0,nrow = n, ncol = m)
    for(i in 1: n ){
      for(j in 1: m ){
        M[i,j] <- A[i,j] + B[i,j]
      }
    }
  }
  return(M)
}
A <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = T)
B <- matrix(c(8,9,5,7), nrow = 2, ncol = 2, byrow = T)
somam(A,B)

# Exercício 5.8

# Letra a ## No caderno ##

# Letra b 

subm <- function(A,B){
  n <- nrow(A)
  m <- ncol(A)
  l <- nrow(B)
  c <- ncol(B)
  if(n == m & l == c){
    M <- matrix(0,nrow = n, ncol = m)
    for(i in 1: n ){
      for(j in 1: m ){
        M[i,j] <- A[i,j] - B[i,j]
      }
    }
  }
  return(M)
}
A <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = T)
B <- matrix(c(8,9,5,7), nrow = 2, ncol = 2, byrow = T)
subm(A,B)

# Exercício 5.9

transp <- function(A){
  n <- nrow(A)
  m <- ncol(A)
  M <- matrix(0, nrow = n, ncol = m)
  for(i in 1:n){
    for(j in 1:m){
      M[i,j] <- A[j,i]
    }
  }
  return(M)
}
A <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = T)
A
transp(A)

# Exercício 5.10

# Letra a ## No caderno ##

# Letra b #### Tá errado ####

simet <- function(A){
  n <- nrow(A)
  m <- ncol(A)
  for(i in 1:n){
    for(j in 1:m){
      if(A[i,j] != A[j,i])
        return(F)
      }
  }
  return(T)
}
A <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = T)
A
simet(A)

# Exercício 5.11

matvet <- function(M,v){
  n <- nrow(M)
  m <- ncol(M)
  k <- length(v)
  if(k != m){
    stop("ERRO")
  }else{
    w <- NULL
    for(i in 1: n){
      w[i] <- prod_int(M[i,],v)
    }
  }
  return(w)
}
A <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = T)
v <- c(1,2)
matvet(A,v)

# Exercício 5.12

mm <- function(A,B){
  n <- nrow(A)
  m <- ncol(A)
  l <- nrow(B)
  k <- ncol(B)
  if(m != k){
    stop("ERRO")
  }else{
    M <- matrix(0, nrow = n, ncol = k)
    for(i in 1: n){
      for(j in 1: k){
        M[i,j] <- prod_int(A[i,],B[,j])
      }
    }
  }
  return(M)
}
A <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = T)
A
B <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = T)
B
mm(A,B)


