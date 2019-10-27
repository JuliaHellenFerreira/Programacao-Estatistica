# Semana 06 - Algoritms Recursivos

# Exercício 6.1

fatorial <- function(n){
  if( n < 0 || n %% 1 != 0)
    stop("Erro")
  if( n == 0 || n == 1)
    return(1)
  return( n * fatorial( n - 1))
}

fatorial(5)

# Exercício 6.2

max <- function(v){
  n <- length(v)
  if(n == 1)
    return(v[1])
  vet <- v[2:n]
  maxv <- max(vet)
  if(v[1] > maxv)
    return(v[1])
  return(max(vet))
}

max(c(2,3,6,4))

# Exercício 6.3
## Letra a - Pseudocódigo

## Letra b

soma <- function(v){
  n <- length(v)
  if(n == 1)
    return(v[1])
  vet <- v[2:n]
  somav <- soma(vet) + v[1]
  return(somav)
}

# Exercício 6.4
## Letra a

## Letra b

maxp <- function(v){
  n <- length(v)
  if(n ==1)
    return(1)
  vet <- v[1:(n-1)]
  maxpv <- maxp(vet)
  if(v[n] > v[maxpv])
    return(n)
  return(maxpv)
}

maxp(c(100,20,30,9,7))

# Exercício 6.5

## Letra a

## Letra b

## Letra c

bol <- function(n){
  if(n ==1)
    return(1)
  return((2*n) - 1 + bol(n - 1))
}

bol(4)

# Exercício 6.6
## Letra a

## Letra b

## Letra c

## Letra d

investimento <- function(n){
  if(n < 0 || n %% 1 != 0 )
    stop("Erro")
  if(n == 0)
    return(500)
  return( 1.075 * investimento(n-1))
}

investimento(2)

# Exercício 6.7
## Letra a

## Letra b

investimento1 <- function(I,j,n){
  if(n < 0 || n %% 1 != 0 )
    stop("Erro")
  if(n == 0)
    return(I)
  return(j * investimento1(I,j,n-1))
}

investimento1(1000,1.10,2)

# Exercício 6.8

financiamento <- function(m){
  if( m < 0 || m %% 1 !=0 )
    stop("Erro")
  if(m == 0)
    return(1200)
  divida <- financiamento(m-1) * 1.02 - 120
  if(divida < 0)
    return(0)
  return(divida)
}

financiamento(10)


# Exercício 6.9

financiamento1 <- function(F, j, K, m){
  if( m < 0 || m %% 1 !=0 )
    stop("Erro")
  if(m == 0)
    return(F)
  divida <- financiamento1(F, j, K, m-1) * j - K
  if( divida < 0)
    return(0)
  return(divida)
}

financiamento1(1200, 1.02, 150,10)
financiamento1(1200, 1.02, 120,10)

# Exercício 6.10

meses <- function(F,j,K){
  if(F <= K)
    return(1)
  F <- F * j - K
  return(1 + meses(F,j,K))
}

meses(1200,1.02,150)
meses(1200,1.02,120)

# Exercício 6.11

fibonacci <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 1)
    return(0)
  if(n == 2 || n == 3)
    return(1)
  return(fibonacci(n-1) + fibonacci(n-2))
}

fibonacci(8)

# Exercíco 6.12

equacao <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 1 || n == 2)
    return(0)
  return(2 * equacao(n-1) + equacao(n-2) + n)
}

equacao(5)


