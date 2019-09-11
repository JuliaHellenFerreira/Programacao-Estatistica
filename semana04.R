# Semana: Algoritmos para Cálculos Estatísticos

# Exercício 4.1

# Letra a

v <- NULL
max <- function(v){
  maior <- v[i]
  for(i in 1:length(v)){
    if(maior < v[i]){
      maior <- v[i]
    }
  }
  return(maior)
}
max(c(1,2,600,5,10,500))

# Letra b ## Fazer em casa ##

# Letra c

v <- NULL
maxp <- function(v){
  pos <- 1
  maior <- v[i]
  for(i in 1:length(v)){
    if(maior < v[i]){
      maior <- v[i]
      pos <- pos + 1
    }
  }
  return(pos)
}
maxp(c(1,2,300,5,10,200))

# Exercício 4.2

# Letra a ## Fazer em casa ##

# Letrta b


v1 <- NULL
min <- function(v1){
  menor <- v1[i]
  for(i in 1:length(v1)){
    if(menor > v1[i]){
      menor <- v1[i]
    }
  }
  return(menor)
}
min(c(1,2,600,0.5,10,500))

# Letra c ## Fazer em casa ##

# Letra d

minp <- function(v1){
  n <-  length(v1)
  pos1 <- 1
  menor <- v1[i]
  for(i in 1:n){
    if(menor > v1[i]){
      menor <- v1[i]
      pos1 <- i
    }
  }
  return(pos1)
}
minp(c(1,2,600,0.5,10,500))

# Exercício 4.3

media <- function(v){
  soma <- 0
  for(i in 1:length(v)){
    soma <- soma + v[i]
  }
  return(soma/length(v))
}
media(c(1,2,3,4))

# Exercício 4.4 
mediana <- function(v){
  v1 <- sort(v)
  n <- length(v1)
  if(n %% 2 == 0){
    return(v1[n/2] + v1[(n/2) + 1])
  }else
    return(v1[(n + 1)/2])
}
mediana(c(1,2,3,4,5,6))

# Exercício 4.5

# Letra a 

quartil <- function(v){
  m <- mediana(v)
  v <- sort(v)
  n <- length(v)
  if( n %% 2 != 0){
    k <- ((n + 1) / 2) - 1
    s <- ((n + 1) / 2) -1
  }else{
    k <- n / 2
    s <- (n / 2) + 1
  }
  w <- v[1 : k]
  u <- v[s : n]
  q1 <- mediana(w)
  q3 <- mediana(u)
  return(c(q1, m, q3))
}
quartil(c(1,2,3,4,5,6))

