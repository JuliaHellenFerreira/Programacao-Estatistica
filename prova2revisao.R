# Revisão Prova 

# Questão 1

nulo <- function(v){
  if(class(v) != "numeric")
    stop("Erro")
  soma <- 0
  n <- length(v)
  if(v[1] == 0)  # Verificando o primeiro elemento
    soma <- 1
  if(n == 1)   # Caso Base
    return(soma)
  vet <- v[2:n]
  return(soma + nulo(vet))
}

# Questão 2

# Letra a

ordena <- function(v){
  n <- length(v)
  if(n == 1)
    return(v[1])
  for(i in n:2){
    if(v[i - 1] > v[i]){
      aux <- v[i]
      v[i] <- v[i - 1]
      v[i - 1] <- aux
    }
  }
  w <- v[2:n]
  wordenado <- ordena(w)
  vordenado <- c(v[1], wordenado)
  return(vordenado)
}

v <- c(2,3,1,5,7,4,8,6)

ordena(v)

# Letra b

ordenatroca <- function(v,  cont = 0){
  n <- length(v)
  if(n == 1)
    return(list(v, cont))
  for(i in n:2){
    cont <- cont + 1
    if(v[i - 1] > v[i]){
      aux <- v[i]
      v[i] <- v[i - 1]
      v[i - 1] <- aux
    }
  }
  w <- v[2:n]
  wordenado <- ordenatroca(w, cont)
  vordenado <- c(v[1], wordenado[[1]])
  return(list(vordenado, cont))
}

ordenatroca(v)

# Questão 3

# Letra a

equacao <- function(n){
  if(n < 0 || n %% 1 !=0 )
    stop("Erro")
  if(n == 0)
    return(1)
  if(n == 1)
    return(1)
  return(2 * equacao(n-1) - equacao(n-2) + 1) # Não esquecer a forma recusiva
}

equacao(6)

# Letra b

equacaogeral <- function(n, x0, x1){
  if(n < 0 || n %% 1 !=0 )
    stop("Erro")
  if(n == 0)
    return(x0)
  if(n == 1)
    return(x1)
  return(2 * equacaogeral(x0,x1,n-1) - equacaogeral(x0,x1,n-2) + 1) # Não esqucer do número de argumentos
}

equacaogeral(5,2,6)

# Questão 4

serie <- function(n){
  if(n < 0 || n %% 1 != 0)
    stop("Erro")
  if(n == 1)
    return(0)
  return((3 * (1 - n)) + serie( n - 1)) # Sempre acresentar o último elemento na série
}

serie(4)
