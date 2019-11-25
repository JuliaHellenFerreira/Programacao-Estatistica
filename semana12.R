# # Semana 12 - Derivação Númerica

# Exercício 12.1 - Caderno 

# Exercíco 12.2 - Caderno

# Exercício 12.3

########## Função ##########

f1 <- function(x){
  resp <- 1 / (x^2 + 1)
  return(resp)
}

## Letra a - Reais

## Letra b

############ Método sem recursão ###############

DerivadaNumerica <- function(x0, f, inc = 0.001){
  h <- 1
  x1 <- x0 + h
  x2 <- x0 - h
  d <- (f1(x1) - f1(x2)) / 2 * h
  repeat{
   h <- h / 2
   x1 <- x0 + h
   x2 <- x0 - h
   dd <- (f1(x1) - f1(x2)) / 2 * h
   if(abs(d - dd) < inc){
     return(dd)
  }
 }
}

## Letra b

DerivadaNumerica(0,f1)
DerivadaNumerica((-1/5),f1)
DerivadaNumerica(1/3,f1)

## Letra d

######### Método com recursão ##########

DerivadaNumericaRec <- function(x0, f, inc = 0.001, h = 1){
  x1 <- x0 + h
  x2 <- x0 - h
  d <- (f1(x1) - f1(x2)) / 2 * h
  h <- h / 2
  x1 <- x0 + h
  x2 <- x0 - h
  dd <- (f1(x1) - f1(x2)) / 2 * h
  if (abs(d - dd) < inc)
    return(dd)
  return(DerivadaNumericaRec(x0, inc, h))
}

# Letra e 

DerivadaNumericaRec(0, f1)
DerivadaNumericaRec((-1/5),f1)
DerivadaNumericaRec(1/3,f1)

# Exercício 12.4

######### Função ###########

f2 <- function(x){
  if(x == -2 || x == -1 || x == 0 || x == 1)
    return("Erro")
  cont <- log(x^2 + x - 2)
  return(cont)
}

f2(2)

## Letra d

DerivadaNumericaRec1 <- function(x0, f, inc = 0.001, h = 1){
  x1 <- x0 + h
  x2 <- x0 - h
  d <- (f2(x1) - f2(x2)) / 2 * h
  h <- h / 2
  x1 <- x0 + h
  x2 <- x0 - h
  dd <- (f2(x1) - f2(x2)) / 2 * h
  if (abs(d - dd) < inc)
    return(dd)
  return(DerivadaNumericaRec1(x0, inc, h))
}

# Letra e 

DerivadaNumericaRec1(3, f2)
DerivadaNumericaRec1((-5/2),f2)
DerivadaNumericaRec1(4/3,f2)


