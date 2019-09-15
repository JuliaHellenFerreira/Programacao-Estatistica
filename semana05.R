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
  return(prod_i == 0)
}
v <- c(0,0,0,0)
u <- c(1,2,3,4)
prod_int(v,u)

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






