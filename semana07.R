# Semana 07 - Algoritmo de Recursivos ( continua√ß√£o )

# Exerc√≠cio 7.1

somatorio <- function(n){
  if(n == 0)
    return(0)
  if(n == 1)
    return(1)
  return(n + somatorio(n - 1))
}

somatorio(5)

#Exerc√≠cio 7.2

fatorial <- function(n){
  if(n == 0 || n == 1)
    return(1)
  return(n * fatorial(n - 1))
}

serie <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 0)
    return(1)
  return(serie(n - 1) + 1 / fatorial(n))
}

serie(9) # Pr√≥ximo do e

# Exerc√≠cio 7.3

pi <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 0)
    return(4)
  return(pi(n - 1) + (4 * (-1)^n) / (2 * n + 1))
}

pi(3000)

# Exerc√≠cio 7.4

fibonacci <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 1)
    return(1)
  if(n == 2)
    return(1)
  return(fibonacci(n - 1) + fibonacci(n - 2))
}

somafib <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 1)
    return(1)
  if(n == 2)
    return(2)
  return(fibonacci(n - 1) + fibonacci(n - 2) + somafib(n - 1))
}

somafib(5)

# Exerc√≠cio 7.5

## Letra b
soma <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 0)
    return(1)
  if(n == 1)
    return(1/3)
  return((1/3^n) + soma(n - 1))
}

soma(2)

## Letra c

Soma <- function(a,b){
  if( a < 0 || a %% 1 != 0)
    stop("Erro")
  if( b < 0 || b %% 1 != 0)
    stop("Erro")
  if( a == b )
    return(1/3^a)
  return(Soma(a,b-1) + 1/3^b)
}

Soma(2,4)

# ExercÌcio 7.6

multiplicacao <- function(n){
  if( n < 0 || n %% 1 != 0)
    stop("Erro")
  if( n == 0 )
    return(1)
  return(2*multiplicacao(n - 1))
}

multiplicacao(3)

multiplicacao1 <- function(x,n){
  if( n < 0 || n %% 1 != 0)
    stop("Erro")
  if( n == 0 )
    return(1)
  return(x * multiplicacao1(x,n - 1))
}

multiplicacao1(2,3)

# ExercÌcio 7.8

nulos <- function(v){
  cont <- NULL
  n <- length(v)
  if( n == 0){
    if( v[1] == 0){
      cont <- cont + 1
      return(cont)
    }
  return(cont)
  }
  vet <- v[2:n]
  nulo <- nulos(vet)
  if(vet[1] == 0){
    cont <- cont + 1
    return(cont)
    }
  return(nulo)
}

nulos(c(2,0,2,0))

# ExercÌcio 7.9

# ExercÌcio 7.10

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

MDC(125,325)
MDC(2829,861)
MDC(299,217)

# ExercÌcio 7.11

# ExercÌcio 7.12