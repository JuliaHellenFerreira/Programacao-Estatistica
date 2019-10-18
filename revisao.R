# Entendendo recursividade - Revisão

# Fatorial

fatorial <- function(x){
  if( x == 0 || x == 1)
    return(1)
  else
    return(x*fatorial(x-1))
}

fatorial(5)

# Fibonacci

fibonacci <- function(x){
  if( x == 1)
    return(0)
  if( x == 2 || x == 3)
    return(1)
  else
    return(fibonacci(x-1) + fibonacci(x-2))
}

fibonacci(7)

# Apostila

# Capítulo 6

# Máximo 

Max <- function(v){
  n <- length(v)
  if ( n == 1)
    return(v[1])
  w <- v[2:n]
  maxw <- Max(w)
  if (v[1] > maxw)
    return(v[1])
  return(maxw)
}

v <- c(7,8,6,20,4,100,1)
Max(v)

# Bolinhas

Numbolinhas <- function(n){
  if ( n < 0)
    stop("ERRO")
  if ( n == 1)
    return(1)
  else
    return(n + Numbolinhas(n - 1))
}

Numbolinhas(4)

# Investimento

Investimento <- function(n){
  if ( n < 0)
    stop("ERRO")
  if ( n == 0 )
    return(1000)
  else
    return(1.007 * Investimento(n-1))
}

Investimento(2)

# Divida

Divida <- function(n){
  if ( n < 0 )
    stop("Erro")
  if ( n == 0)
    return(1000)
  d <- 1.015*Divida(n -1) - 200
  if ( d < 0)
    return(0)
  else
    return(d)
}

Divida(6)

# Parcelas para pagar a divida ##### ERRO #####

Meses <- function(p){
  if ( p < 0)
    stop("Erro")
  if ( p == 0)
    return(1000)
  if ( p == 1000)
    return(0)
  m <- Divida()
  m <- Divida(par)
  if (m < 0)
    return(0)
  else
    return(m)
}

Meses(200)

# Capítulo 7

# Série

Serie <- function(n){
  if ( n < 0)
    stop("Erro")
  if ( n == 0)
    return(0)
  else
    return(n + Serie( n - 1))
}

Serie(3)

# Serie <- 1/n! #### O chinês não funcionou

Serie2 <- function(n){
  if ( n < 0 )
    stop("Erro")
  if ( n == 0)
    return(1)
  else
    return( Serie2(n - 1) + 1/fatorial(n))
}

Serie2(3)

# Maior divisor comum

MDC <- function(n,m){
  if ( n < 0  || m < 0)
    stop("Erro")
  if ( n %% 1 != 0 || m %% 1 !=0)
    stop("Erro")
  if ( m > n){
    maior <- m
    menor <- n
  }else{
    maior <- n
    menor <- m
  }
  if ( menor == 0)
    return(maior)
  return(MDC(menor, maior - menor))
}

MDC(252,105)
