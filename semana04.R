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
    return((v1[n/2] + v1[(n/2) + 1]) / 2)
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
    s <- ((n + 1) / 2) + 1
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

# Letra b ## Caderno

# Letra c

met2 <- function(v){
  n <- length(v)
  v <- sort(v)
  if( n %% 2 == 0){
    k <- n /2 
    j <- k + 1
  }else{
    k <- (n - 1) / 2 
    j <- k + 2
  }
  v1 <- v[1 : k]
  v2 <- v[j : n]
  q1 <- mediana(v1)
  q2 <- mediana(v)
  q3 <- mediana(v2)
  return(c(q1,q2,q3))
}

met2(c(1,2,3,4,5,6))

# Exercício 4.6 ##### Não está funcionando ####

# Letra a 

freqabsoluta <- function(v){
  n <- length(v)
  val <- NULL
  freq <- NULL
  val[1] <- v[1]
  freq[1] <- 1
  for(i in 2 : n){
    if(v[i] == val[k]){
      freq[k] <- freq + 1
    }else{
      j <- length(val)
      val[j + 1] <- v[i]
      freq[j + 1] <- 1
    }
    M <-matrix(0, nrow = 2, ncol = length(freq))
    M[1,] <- val
    M[2,] <- freq
  }
  return(M)
}

freqabsoluta(c(2,3,3,4,4,4,5))

# Exercício 4.7 ##### Não sei ####

# Exercício 4.8

# Letra a ## No caderno ##

# Letra b

maximo <- function(v){
  n <- length(v)
  maior <- v[1]
  for(i in 2: n){
    if( maior < v[i]){
      maior <- v[i]
    }
  }
  return(maior)
}

maximo(c(2,3,1,3,7))

minimo <- function(v){
  n <- length(v)
  menor <- v[1]
  for(i in 1: n){
  if( menor > v[i]){
    menor <- v[i]
  }
  }
  return(menor)
}

minimo(c(2,3,1,3,7))

amplitudetotal <- function(v){
  max <- maximo(v)
  min <- minimo(v)
  at <- max - min
  return(at)
}

amplitudetotal(c(3,4,5,74,2,4,5))

# Exercício 4.9

# Letra a ## No caderno ##

# Letra b

mediana1 <- function(v){
  v <- sort(v)
  n <- length(v)
  if(n %% 2 == 0){
    return((v[n/2] + v[(n/2) + 1])/ 2)
  }else{
    return(v[(n + 1)/2])
  }
}
mediana1(c(1,2,3,4))


quartil1 <- function(v){
  m <- mediana1(v)
  v <- sort(v)
  n <- length(v)
  if(n %% 2 != 0){
    k <- ((n + 1) / 2) - 1
    s <- ((n + 1) / 2) + 1
  }else{
    k <- n / 2
    s <- (n / 2) + 1
  }
  w <- v[1:k]
  u <- v[s:n]
  q1 <- mediana1(w)
  q3 <- mediana1(u)
  return(c(q1,m,q3))
}

quartil1(c(1,2,3,4,5,6))

distinter <- function(v){
  q <- quartil1(v)
  dis <- q[3] - q[1]
  return(dis)
}

distinter(c(1,2,3,4,5,6))
