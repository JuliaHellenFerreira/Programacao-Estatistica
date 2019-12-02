# Semana 13 - Integração Númerica

####################### Sem recursão #########################

Integracaonumerica <- function(f,a,b,erro){
  n <- 100
  repeat{
  d <- (b - a)/n
   au <- 0
   al <- 0
   x <- a
    repeat{
     au <- au + d*max(f(x),f(x + d))
     al <- al + d*min(f(x),f(x + d))
     x <- x + d
     if(x >= b){
       break
     }}
     if((au - al) < 2*erro)
       return((au + al)/2)
   n <- n + 10
  }
}

############################## Com recursão ##########################

Integracaonumericarec <- function(f,a,b,erro,n = 100){
  d <- (b - a)/n
  au <- 0
  al <- 0
  x <- a
  repeat{
    au <- au + d*max(f(x),f(x + d))
    al <- al + d*min(f(x),f(x + d))
    x <- x + d
    if(x > b){break}}
  if((au - al) < 2*erro)
    return((au + al)/2)
  return(Integracaonumericarec(f,a,b,erro, n+10))
}

# Exercício 13.1

f1 <- function(x){
  return(abs(x - 3) - 2)
}

## Letra c

Integracaonumerica(f1,2,4,0.01)
Integracaonumericarec(f1,2,4,0.01)

# Letra d

Integracaonumericarec(f1,2,4,0.01,50)
Integracaonumericarec(f1,2,4,0.01,100)
Integracaonumericarec(f1,2,4,0.01,150)

# Exercício 13.2 - Feita

# Exercício 13.3

## Letra a

f2 <- function(x){
  return(x**2 - x - 1)
}
Integracaonumerica(f2,-1,1,0.005)
Integracaonumericarec(f2,-1,1,0.005)
-4/3

## Letra b

f3 <- function(x){
  return(x*exp(x**2))
}

Integracaonumerica(f3,0,2,0.01)
Integracaonumericarec(f3,0,2,0.01)
((exp(4) - 1)/2)

## Letra c

f4 <- function(x){
  if(x == 0)
    stop("Erro")
  return(1/x)
}

Integracaonumerica(f4,-2,-1,0.0001)
Integracaonumericarec(f4,-2,-1,0.0001)

# Exercício 13.4

## Sem Recursão

IntegracaonumericaO <- function(f,a,b,erro){
  n <- 100
  repeat{
    d <- (b - a)/n
    au <- 0
    al <- 0
    x <- a
    repeat{
      au <- au + d*max(f(x),f(x + d))
      al <- al + d*min(f(x),f(x + d))
      x <- x + d
      if(x >= b){
        break
      }}
    if((au - al) < 2*erro){
      result <- list((au + al)/2,n)
      return(result)
    }
    n <- n + 10
  }
}

## Com recursão

IntegracaonumericarecO <- function(f,a,b,erro,n = 100){
  d <- (b - a)/n
  au <- 0
  al <- 0
  x <- a
  repeat{
    au <- au + d*max(f(x),f(x + d))
    al <- al + d*min(f(x),f(x + d))
    x <- x + d
    if(x > b){break}}
  if((au - al) < 2*erro){
    result <- list((au + al)/2,n)
    return(result)
    }
  return(IntegracaonumericarecO(f,a,b,erro, n+10))
}

# Exercício 13.5

IntegracaonumericaO(f2,-1,1,0.005)
IntegracaonumericarecO(f2,-1,1,0.005)

IntegracaonumericaO(f3,0,2,0.01)
IntegracaonumericarecO(f3,0,2,0.01)

IntegracaonumericaO(f4,-2,-1,0.0001)
IntegracaonumericarecO(f4,-2,-1,0.0001)