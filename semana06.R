# Semana 06 - Algoritms Recursivos

# Exercício 6.1

fatorial <- function(n){
  if(n %% 1 !=0 || n < 0 )
    stop("Erro")
  if(n == 0 )
    return(1)
  return(n*fatorial(n-1))
}

fatorial(6)

# Exercício 6.2

Max <- function(v){
  n <- length(v)
  if(n == 1)
    return(v[1])
  w <- v[2:n]
  maxw <- Max(w)
  if(v[1] > maxw)
    return(v[1])
  return(maxw)
}

v <- c(1,5,9,8,6,14,3,7)
Max(v)

# Exercício 6.3

Soma <- function(v){
  n <- length(v)
  if(n == 1)
    return(v[1])
  w <- v[2:n]
  somav <- Soma(w) + v[1]
  return(somav)
}

v <- (c(1,2,3))
Soma(v)

# Exercício 6.4


