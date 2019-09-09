# Exercício 3.8

# Letra a

fib <- function(n){
  f <- c(1,1)
  for(i in 3: n){
    f[i] <- f[i - 1] + f[i-2]
  }
  return(f)
}
fib(12)

# Letra b

fibk <- function(k){
  f <- c(1,1)
  i <- 3
  repeat{
    f[i] <- f[i - 1] + f[i-2]
    i <-  i + 1
    if( k < f[i - 1] + f[i-2]){
      break
    }
  }
  return(f)
}
fibk(100)

# Letra c

fibk1 <- function(k){
  cont1 <- 2
  f <- c(1,1)
  i <- 3
  repeat{
    f[i] <- f[i - 1] + f[i-2]
    i <-  i + 1
    cont1 <- cont1 + 1
    if( k < f[i - 1] + f[i-2]){
      break
    }
  }
  return(cont1)
}
fibk1(100)

# Exercício 3.9

# Letra a

## O valor que será devolvido é (1,2,3,0,0)

# Letra b 

## Dentro da função faremos vet <- NULL

# Exercício 3.10

# Letra a

pg <- function(x0,q,n){
  sn <- (x0*(q^n - 1))/ (q-1)
return(sn)
}
pg(1,2,3)

# Letra b 

pg2 <- function(x0,q,m){
  sn <- (x0*(q^m - 1))/ (q-1)
  soma <- soma + sn[i]
  return(soma)
}
pg2(1,2,10)

# Letra c

pg3 <- function(x0,q,m){
  sn <- (x0*(q^m - 1))/ (q-1)
  soma <- soma + sn[i]
  return(soma)
}
pg3(1/2,1/2,10)

# Letra d

pg4 <- function(x0,q,m){
  sn <- (x0*(q^m - 1))/ (q-1)
  soma <- soma + sn[i]
  return(soma)
}
pg4(1/2,1/2,30)

# Letra f

## Sim, converge para 1

# Letra f

pg3 <- function(x0,q,m){
  sn <- (x0*(q^m - 1))/ (q-1)
  soma <- soma + sn[i]
  return(soma)
}
pg3(1/2,1/2,30)
options(digits=22)